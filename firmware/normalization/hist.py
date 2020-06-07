from typing import Any, List

import matplotlib
import matplotlib.pyplot as plt
import PIL.Image

plt.rcParams["font.family"] = "Open Sans"
title_font_settings = {
    "fontname": "Open Sans Condensed",
    "fontweight": "bold",
    "fontsize": 16,
}


def plot_image_hist(filepath: str) -> None:
    hist = PIL.Image.open(filepath).histogram()
    r = hist[0:256]
    g = hist[256:512]
    b = hist[512:768]

    def plot_channel(
        data: List[Any],
        axis: matplotlib.axis.Axis,
        color: str,
        **plot_attrs: Any,
    ) -> None:
        center = sum(v * i for i, v in enumerate(data)) / sum(data)
        line = axis.axvline(
            center, color="gray", linestyle="dashed", label=f"{center:.0f}"
        )
        (hist,) = axis.plot(data, color=color, **plot_attrs)
        axis.set_xlim(0, 255)
        axis.yaxis.set_ticklabels([])
        axis.legend(handles=[hist, line])

    fig, axes = plt.subplots(
        3, sharey=True, sharex=True, gridspec_kw={"hspace": 0}
    )
    fig.suptitle("White Color Histogram", **title_font_settings)
    plot_channel(r, axes[0], color="r", label="Red")
    plot_channel(g, axes[1], color="g", label="Green")
    plot_channel(b, axes[2], color="b", label="Blue")
    x_ticks = [0] + [(x + 1) * 32 - 1 for x in range(8)]
    axes[2].set_xticks(x_ticks)
    axes[2].set_xticklabels([f"{x:02X}" for x in x_ticks])
    axes[1].set_ylabel("Count")
    plt.xlabel("Pixel value")
    plt.show()


if __name__ == "__main__":
    plot_image_hist("white.png")
