"""Averages the color data found in sunrise-data.csv"""

import math
import matplotlib.pyplot as plt
from matplotlib import animation
import pandas
from typing import Tuple


def read_data() -> pandas.DataFrame:
    df = pandas.read_csv("bb_data.txt", sep="\\s+")
    data = df[df["CMF"] == "10deg"][["T", "R", "G", "B"]]

    # start at (1000 K for early morning)
    # only go up to daylight (4500 K)
    sunrise = data[(1000 <= data["T"]) & (data["T"] <= 5500)]
    sunrise.reset_index(drop=True, inplace=True)

    # plt.plot(sunrise["T"], sunrise["P"])
    # plt.yscale("log")
    # plt.show()

    plt.plot(data["T"], data["R"], "r-",
             data["T"], data["G"], "g-",
             data["T"], data["B"], "b-")
    plt.show()

    sunrise.to_csv("sunrise.csv", index=False)

    return sunrise


def plot_brightness() -> None:
    for k in [1/32, 1/16, 1/8, 1/4, 1/2, 1, 2, 4]:
        ts = [i / 1000.0 for i in range(0, 1000)]
        bs = [brightness(k, t) for t in ts]
        plt.plot(ts, bs, label="k = " + str(k))
    plt.ylabel("Brightness")
    plt.xlabel("Time")
    plt.legend()
    plt.show()


def brightness(k: float, t: float) -> float:
    u = math.exp(1/k) - 1
    return k * math.log(t + 1/u) + k * math.log(u)


def main(data: pandas.DataFrame):
    def data_gen() -> Tuple[float, float, float]:
        done = False
        t = 0
        partial = 0
        while not done:
            partial += 0.1
            if partial >= 1:
                t += 1
                partial -= 1
            if t+1 >= len(data):
                partial = 1
                t -= 1
                done = True

            low = data.loc[t]
            high = data.loc[t + 1]
            yield color_between(low, high, t, partial)
            # yield brightness(t), brightness(t*2), brightness(t*4)

    def color_between(low, high, t, fraction) -> Tuple[float, float, float]:
        def interpolate(name: str) -> float:
            return low[name] + (high[name] - low[name])*fraction

        def scale(x: float) -> float:
            norm = (t + fraction) / (len(data) - 1)
            return brightness(k=0.5, t=norm) * x

        return (scale(interpolate("R")),
                scale(interpolate("G")),
                scale(interpolate("B")))

    def init():
        # print("init")
        ax.set_ylim(0, 10)
        ax.set_xlim(0, 10)
        return box,

    fig, ax = plt.subplots()
    box, = ax.fill([0, 0, 10, 10], [0, 10, 10, 0])

    def run(data):
        # update the data
        r, g, b = data
        box.set_color((r, g, b))
        return box,

    a = animation.FuncAnimation(fig, run, data_gen, blit=True, interval=10,
                                repeat=False, init_func=init)
    plt.show(a)


if __name__ == "__main__":
    plot_brightness()
    sunrise = read_data()
    main(sunrise)
