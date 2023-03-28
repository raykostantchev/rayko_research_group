---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Super Sub-Nyquist Single-Pixel Imaging by Total Variation Ascending Ordering
  of the Hadamard Basis
subtitle: ''
summary: ''
authors:
- Xiao Yu
- Rayko Ivanov Stantchev
- Fan Yang
- Emma Pickwell-MacPherson
tags: []
categories: []
date: '2020-06-01'
lastmod: 2023-03-28T16:08:39+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2023-03-28T08:08:39.670010Z'
publication_types:
- '2'
abstract: Single pixel imaging (SPI) captures images without array detectors or raster
  scanning. When combined with compressive sensing techniques it enables novel solutions
  for high-speed optical imaging and spectroscopy. However, when it comes to the real-time
  capture and analysis of a fast event, the challenge is the inherent trade-off between
  frame rate and image resolution. Due to the lack of sufficient sparsity and the
  intrinsic iterative process, conventional compressed sensing techniques have limited
  improvement in capturing natural scenes and displaying the images in real time.
  In this work, we demonstrate a novel alternative compressive imaging approach employing
  an efficient and easy-implementation sampling scheme based on reordering the deterministic
  Hadamard basis through their total variation. By this means, the number of measurements
  and acquisition are reduced significantly without needing complex minimization algorithms.
  We can recover a 128x128 image with a sampling ratio of 5% at the signal peak signal-to-noise
  ratio (PSNR) of 23.8dB, achieving super sub-Nyquist sampling SPI. Compared to other
  widely used sampling e.g. standard Hadamard protocols and Gaussian matrix methods,
  this approach results in a significant improvement both in the compression ratio
  and image reconstruction quality, enabling SPI for high frame rate imaging or video
  applications.
publication: '*Scientific Reports*'
doi: 10.1038/s41598-020-66371-5
---
