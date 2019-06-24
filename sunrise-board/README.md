# Sunrise Alarm Hardware

![board-render-f](svg/top.svg)

![board-render-b](svg/bottom.svg)

This board is driven by an ATmega238P and has the a similar header layout as an arduino pro mini for debugging or expansion. It also has an RTC and three of the PWM outputs are gated through MOSFETs to provide high power channels.


# Schematic
![schematic](sunrise-board.svg)


# BOM
| Reference            | Value         | Part Number       |   Quantity | Datasheet                                                                                                         | Link                                                                    |
|----------------------|---------------|-------------------|------------|-------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| BT1                  | CR1220 3.3V   | BAT-HLD-012-THM   |          1 | [Datasheet](https://linxtechnologies.com/wp/wp-content/uploads/bat-hld-012-thm.pdf)                               | [mouser.com](https://www.mouser.com/ProductDetail/712-BAT-HLD-012-THM)  |
| C1 C2                | 10uF          | USR1E100MDD1TP    |          2 | [Datasheet](http://nichicon-us.com/english/products/pdfs/e-usa_usr.pdf)                                           | [mouser.com](https://www.mouser.com/ProductDetail/USR1E100MDD1TP)       |
| C3 C4 C5 C6          | 0.1uF         | K104K15X7RF53H5   |          4 | [Datasheet](https://www.vishay.com/docs/45171/kseries.pdf)                                                        | [mouser.com](https://www.mouser.com/ProductDetail/K104K15X7RF53H5)      |
| D1 D2                | LED           | LTL-4222N         |          2 | [Datasheet](https://optoelectronics.liteon.com/upload/download/DS-20-92-0241/4222N.pdf)                           | [mouser.com](https://www.mouser.com/ProductDetail/LTL-4222N)            |
| J1                   | 2.1mm Jack    | PJ-102A           |          1 | [Datasheet](https://www.cui.com/product/resource/pj-102a.pdf)                                                     | [mouser.com](https://www.mouser.com/ProductDetail/PJ-102A)              |
| J2 J4                | Header        | ~                 |          2 | [Datasheet](http://suddendocs.samtec.com/catalog_english/tsw_th.pdf)                                              | ~                                                                       |
| J3                   | FTDI Basic    | TSW-106-08-T-S-RA |          1 | [Datasheet](http://suddendocs.samtec.com/catalog_english/tsw_th.pdf)                                              | [mouser.com](https://www.mouser.com/ProductDetail/TSW-106-08-T-S-RA)    |
| J5                   | Header        | TSW-130-07-T-S    |          1 | [Datasheet](http://suddendocs.samtec.com/catalog_english/tsw_th.pdf)                                              | [mouser.com](https://www.mouser.com/ProductDetail/TSW-130-07-T-S)       |
| J6                   | Header        | ~                 |          1 | [Datasheet](http://suddendocs.samtec.com/catalog_english/tsw_th.pdf)                                              | ~                                                                       |
| Q1 Q2 Q3             | STP16NF06     | STP16NF06         |          3 | [Datasheet](https://www.st.com/resource/en/datasheet/cd00002501.pdf)                                              | [mouser.com](https://www.mouser.com/ProductDetail/STP16NF06)            |
| R1 R2 R3 R4 R5 R6 R8 | 10k           | CFR-25JT-52-10K   |          7 | [Datasheet](http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf)        | [mouser.com](https://www.mouser.com/ProductDetail/CFR-25JT-52-10K)      |
| R7                   | 330           | CFR-25JT-52-330R  |          1 | [Datasheet](http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/throughhole/Yageo_LR_CFR_2013.pdf)        | [mouser.com](https://www.mouser.com/ProductDetail/CFR-25JT-52-330R)     |
| SW1                  | Reset         | SKHHAJA010        |          1 | [Datasheet](https://www.alps.com/prod/info/E/HTML/Tact/SnapIn/SKHH/SKHHAJA010.html)                               | [mouser.com](https://www.mouser.com/ProductDetail/SKHHAJA010)           |
| U1                   | L4931CZ50-AP  | L4931CZ50-AP      |          1 | [Datasheet](https://www.st.com/resource/en/datasheet/l4931.pdf)                                                   | [mouser.com](https://www.mouser.com/ProductDetail/511-L4931CZ50-AP)     |
| U2                   | DS1307+       | DS1307+           |          1 | [Datasheet](https://datasheets.maximintegrated.com/en/ds/DS1307.pdf)                                              | [mouser.com](https://www.mouser.com/ProductDetail/700-DS1307)           |
| U3                   | ATmega328P-PU | ATMEGA328P-PU     |          1 | [Datasheet](http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061A.pdf) | [mouser.com](https://www.mouser.com/ProductDetail/ATMEGA328P-PU)        |
| Y1                   | 32.768Hz      | LFXTAL002997Bulk  |          1 | [Datasheet](https://www.iqdfrequencyproducts.com/products/pn/LFXTAL002997Bulk.pdf)                                | [mouser.com](https://www.mouser.com/ProductDetail/449-LFXTAL002997BULK) |
| Y2                   | 16MHz         | CSTLS16M0X55-A0   |          1 | [Datasheet](https://www.murata.com/en-us/api/pdfdownloadapi?partno=CSTLS16M0X55-A0)                               | [mouser.com](https://www.mouser.com/ProductDetail/81-CSTLS16M0X55-A0)   |


# Component Placement
![front-fab](docs/doc-F.svg)


# LICENSE
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
<img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"/>
</a>

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
