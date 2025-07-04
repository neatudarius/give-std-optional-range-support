# WG21 P3168: Give std::optional Range Support

Authors: Marco Foco ([@mfoco](https://github.com/mfoco)), Darius Neațu ([@neatudarius](https://github.com/neatudarius)), Barry Revzin ([@brevzin](https://github.com/brevzin)), David Sankel ([@camio](https://github.com/camio))

Audience: Library Evolution

Description: The standard library lacks facilities for optional types when doing range operations. While other solutions proposed creating a new type, this paper explores the design alternative where `std::optional` is made into a range. 

> Note: This repo/paper is work for [WG21: C++ Standards Committee Papers](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/).

## Published Revisions
* P3168R0:
  * [https://wg21.link/P3168R0](https://wg21.link/P3168R0), 2024-02-28
  * source: [P3168R0.md](./revisions/P3168R0.md)
  * status: reviewed in Tokyo 2024; forwarded to LEWG April Electronic Polls.
* P3168R1:
  * [https://wg21.link/P3168R1](https://wg21.link/P3168R1), 2024-04-08
  * source: [P3168R1.md](./revisions/P3168R1.md)
  * status: passed LEWG April Electronic Polls and forwarded to LWG for Saint Louis 2024.
* P3168R2:
  * [https://wg21.link/P3168R2](https://wg21.link/P3168R2), 2024-06-25
  * source: [P3168R2.md](./revisions/P3168R2.md)
  * implementation: [beman.optional](https://github.com/bemanproject/optional) (former `Beman.Optional26`).
  * status: reviewed and approved by LWG in Saint Louis 2024, forwarded to LWG Straw Polls. Passed plenary in Saint Louis 2024.

Final status: Accepted into the C++26 Working Draft!!!

## Tracking Issues

* [cplusplus: P3168 R2 Give std::optional Range Support #1831](https://github.com/cplusplus/papers/issues/1831)
* [[LWG motion 4 2024-06] P3168R2 Give std::optional Range Support](https://github.com/cplusplus/draft/pull/7106)
* Compiler cupport: [cppreference: C++26 library features](https://en.cppreference.com/w/cpp/compiler_support#C.2B.2B26_library_features)

