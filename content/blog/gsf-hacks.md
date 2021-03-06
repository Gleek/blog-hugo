---
title: "GSF Hacks"
type: "blog"
date: 2014-05-08 03:01:30 +0530
aliases:
    - /blog/2014/05/08/gsf-hacks
description: Account of fun in GSF India hacks hackathon
---

![](https://lh3.googleusercontent.com/7zBCup0aXx-KUJveJNOxISqBj3JXPaPY9u05q9Akw3EqIICRgExww1BMImw25FkodIVfACX6cC7OepuQz4kpvkniONdYjrb9fwTqRI06e3OwMtQyzew9zviROsNkWi49fC_5C0wb3AVEGg55HvpBLTkVdMT1nsu2HwaleXumrALCPmbaNjsO_dcnNoVwmNmVALbXuMUDM87MSpz9Lt746gU1HiV8XnFxroGCv_AdQ3rA3h7eNWjQIyS-wqFiuamL7EF6jdXo0LUVGDJWSuzShCwHGXKwwZ4ixY3RVerIG8jJ7zupxT94DshLMzMU_jYQk6pLm7qLFnCntEB8hakWZWLShUpKrBl_4gJ4RlW9dH3fVsqbnzOKW3HnVZpIAErQOctUDtbmqgW-_WGrmBbFI8Jk5cfBjCC9SXs9wAqZt2R-BwvYXR__ahl9rDiJRdPXB1GQQNpnRgB_dCyMTBrW-KnqWoI_KN4kwSHI1ARYDNC3v1OM-tc_3nPIsjy_JwoxZ4sG4cTsHbefXt6BL2HnETD77GmYCx9TWZb-j_wnnY0xHRBNU8kOHOZCFJ8_B0Z3S4rhTKBCV9U9s6B5UgChO_DhtlOdv1dgisSgPYXahpo1chmtSNluBBIfdSQ5odHBNJVITuLRDqUod8Dm-LzmJdcBQmpgse-VUDvCFe7qMA=s370)


Last month some of my friends and I went to a hackathon organized by [GSF India](http://www.gsfindia.com/hacks/). This hackathon was particularly interesting since almost all the participants were amongst the top ranked from [Hacker Earth](http://www.hackerearth.com/) and thus a tough competition was expected.
<!--more-->
The participating teams had to choose one challenge to compete. Our team chose shine.com challenge which involved improving their registration system in an innovative manner.

[Shine.com](http://www.shine.com) is a website for job finding. We could easily see problems with the registration system, which could be solved. What we built was a utility which involved an IVR, Voice Recognition system, Resume Parsing (PDF/DOC) and an Android App for smart phones as well as not so smart phones.

- [Kookoo](http://www.kookoo.in/) API and AT&T voice parsing API was used in the **IVR system**. The Kookoo system recorded the voice of a person *by a simple phone call* and AT&T API helped us parse it. Thus making it suitable for any mobile phone.

- We also made a **CV/Resume Parser** with a help of small `cURL` hack on rchilli CV Parser. It allowed the user to upload his resume and getting his details automagically filled in the form.

- On the top of everything we also made an **Android App** which again does all the above things.

**You can find the code on [Github](https://github.com/Gleek/gsfhack)**

The good thing is that our hard work paid off and we won the challenge.
What's better than a 2 days of coding with free food , infinite Red-Bulls, a cool tablet and a little cash. Well other than that we also got a cool sipper and a t-shirt.

Here's a photo of our team with two of the judges

![Team Octane](https://lh3.googleusercontent.com/e6tC7XObOye9I067tEV_k0Hhl5KggZ7V62u1KsWAak6YRSDH3q61c4bVaOen_NaNpD0T_PyEeSiVe-lrrGTivNrTq5EaYKQRZ-gD_oJygYQXiK2LGmkv3wH8lKWxVlB0FGoAy57PCK19m1fIF-C3Vho9fLoIT_MyQFTVihhV_FT6bEL16WwfY_un99vuJSdPRu_ipOf0sijwZJ2g12-bDLJgvfbXw9VHRw9lWe72DSHEh4sE5x5aIOzR_OraKF2isC6lBSTKHvnAdzQu0O2d-sm92w3CJT8QQpklEb-P9bZuUi075lNzhtRdmusL503TlRPY7bvJYHsrlQTTIaLQ2VnTUcdaejI13vxul8XKbxOynVewB9c5rVV61bt9JAG7yx-VKK7IUqGZ2gMhhbvE4E76rX9rvjr0qGjdYG7-2Nk8FMSJGcfdUxiHr790W2TOn5aIXwEnqMyeQHd0V5jCkvSOgivTQSinXZuBst5Lpung2ax-joCVCmWWfUigLaBSNa8roRum6xdhSfUzOqbVle5CgPlThVMc6JkT1qSsQ2cMBRVyKmTyZMluYs0RBIUoztM_YzVHQqvbtLgXIxdKkm6WNZjS6upMng6JO2m0BWmbOhWKezsDalnBLuVJiGuGANGrbz-pvOFKtefjbl9J-82blWUPAd1cj4pQA87xcw=w1016-h366-no)

You can find the photos on [Facebook](https://www.facebook.com/GSFINDIAACCELERATOR/albums/719167938135941/) and some media coverage at [YourStory](http://yourstory.com/2014/04/gsfhacks/)
