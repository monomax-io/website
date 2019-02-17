# Luxury Escapes - A case study

I have greatly improved the performance and extensibility of the checkout pages in a large React web application.

The work greatly benefited the business by enhancing the checkout experience at large. It also paved a way for future requirements such as integrating flights and paid add-ons into the checkout flow of a hotel.

## Work

* I have written a state machine to cleanly abstract steps in checkout and make it easier to implement additional steps for the business to sell more products.
  * The checkout process consisted of many entangled parts with no clear separation and hard-coded transition. It was impossible for Luxury Escapes to extend it.
  * My work has allowed the company to take vital steps necessary to bring the business to the next level by offering more products and services to customers.

* **I have improved the client-side rendering speed of a vital checkout step in a React web application by 42% and its responsiveness by 36%.**
  * Through careful benchmark and optimization, I achieved a significant performance gain in the most vital part of the checkout process in which users can select travel dates for a hotel booking.

### Benchmark

* Running dev JavaScript bundle on Chrome 70.0.3538.77.
* Will be faster in prod but the scale is relative.
* All times in ms.

---

#### 1. Time to render the calendar after clicking checkout

| Branch  | t1  |  t2 | t3  | t4  | t5  | t6  |  t7 | t8  | t9  | t10  |  mean  | stddev |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| master|309|290.4|288.2|291.3|389.4|322.6|326.6|286.2|325.7|293.9|312.3|31.6|
| checkout| 202.4|166|199.8|193.3|186|175.7|180.8| 182.3|156.6|177.5|182|14.3|

42% performance gain

---

#### 2.Time to render the calendar after clicking checkout

| Branch | t1 | t2 | t3 | t4 | t5 | t6 | t7 | t8 | t9 | t10 | mean | stddev |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| master | total = 368.51, render = 70.39 | total = 425.70, render = 57.26 | total = 477.19, render = 72.12  | total = 486.30, render = 78.82 | total = 343.32, render = 54.93 | total = 356.91, render = 33.38 | total = 316.24, render = 36.99 | total = 383.09, render = 55.26 | total = 367.56, render = 46.09 | total = 432.53, render = 70.99 | total = 395.74, render = 57.62 | total = 57.11, render = 15.49 |
| checkout | total = 243.08, render = 38.88 | total = 297.09, render = 48.49 | total = 227.05, render = 37.79 | total = 225.58, render = 35.53 | total = 291.22, render = 45.7 | total = 238.13, render = 32.16 | total 272.01, render = 41.47 | total = 237.03, render = 31.27 | total = 264.43, render = 62.73 | total = 242.54, render = 42.89 | total = 253.82, render = 41.7 | total = 25.82, render = 9.23|


* 36% performance gain in total
* 28% faster render

---
