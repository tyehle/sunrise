#!/usr/bin/env python3

import pandas as pd
from tabulate import tabulate

def mdlink(df: pd.DataFrame, col: str, text: str) -> None:
    def do_update(target: str) -> str:
        if not target.startswith("http"):
            return target
        return "[{}]({})".format(text, target)

    df[col] = df[col].apply(do_update)


bom = pd.read_csv("sunrise-board.csv", skipinitialspace=True)
mdlink(bom, "Datasheet", "Datasheet")
mdlink(bom, "Link", "mouser.com")

print(tabulate(bom[["Reference", "Value",
                    "PartNumber", "Quantity",
                    "Datasheet", "Link"]],
               headers="keys",
               showindex=False,
               tablefmt="github"))

