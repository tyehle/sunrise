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

    plt.plot(data["T"], data["R"], "r", linestyle=(0, (8, 4)))
    plt.plot(data["T"], data["G"], "g", linestyle=(0, (6, 2, 2, 2)))
    plt.plot(data["T"], data["B"], "b", linestyle=(0, (2, 1)))
    plt.title("Blackbody RGB Color")
    plt.xticks([x * 1000 for x in range(11)])
    plt.xlim(1000, 10000)
    plt.xlabel("Temperature / K")
    # plt.yticks([y*32 for y in range(9)])
    plt.ylabel("Color Channel Value")
    plt.legend(["Red", "Green", "Blue"])
    plt.show()

    sunrise.to_csv("sunrise.csv", index=False)

    return sunrise


def plot_brightness() -> None:
    for k, style, color in [
        (8, (0, (2, 4)), "#00b2ff"),
        (1, (0, (4, 2)), "#0084bd"),
        (1 / 8, "solid", "#000000"),
        (1 / 64, (0, (6, 2, 2, 2)), "#bd0084"),
        (1 / 512, (0, (3, 4, 1, 4)), "#ff00b2"),
    ]:
        ts = [i / 1000.0 for i in range(0, 1000)]
        bs = [brightness(k, t) for t in ts]
        p, q = k.as_integer_ratio()
        label = f"k = {p}" if q == 1 else f"k = {p}/{q}"
        plt.plot(ts, bs, label=label, linestyle=style, color=color)
    plt.title("Exponential Brightness Function")
    plt.ylabel("Brightness")
    plt.xlabel("Time")
    plt.xlim(0, 1)
    plt.ylim(0, 1)
    plt.legend()
    plt.show()


def brightness_ln(k: float, t: float) -> float:
    u = math.exp(1 / k) - 1
    return k * math.log(t + 1 / u) + k * math.log(u)


def brightness(k: float, t: float) -> float:
    a = math.log(1 / k + 1)
    return k * (math.exp(a * t) - 1)


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
            if t + 1 >= len(data):
                partial = 1
                t -= 1
                done = True

            low = data.loc[t]
            high = data.loc[t + 1]
            yield color_between(low, high, t, partial)
            # yield brightness(t), brightness(t*2), brightness(t*4)

    def color_between(low, high, t, fraction) -> Tuple[float, float, float]:
        def interpolate(name: str) -> float:
            return low[name] + (high[name] - low[name]) * fraction

        def scale(x: float) -> float:
            norm = (t + fraction) / (len(data) - 1)
            return brightness(k=0.125, t=norm) * x

        return (
            scale(interpolate("R")),
            scale(interpolate("G")),
            scale(interpolate("B")),
        )

    def init():
        # print("init")
        ax.set_ylim(0, 10)
        ax.set_xlim(0, 10)
        return (box,)

    fig, ax = plt.subplots()
    (box,) = ax.fill([0, 0, 10, 10], [0, 10, 10, 0])

    def run(data):
        # update the data
        r, g, b = data
        box.set_color((r, g, b))
        return (box,)

    a = animation.FuncAnimation(
        fig,
        run,
        data_gen,
        blit=True,
        interval=10,
        repeat=False,
        init_func=init,
    )
    plt.show(block=a)


if __name__ == "__main__":
    plot_brightness()
    sunrise = read_data()
    main(sunrise)
