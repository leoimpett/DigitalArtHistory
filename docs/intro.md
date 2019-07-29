---
title: 'Home'
prev_page:
  url: 
  title: ''
next_page:
  url: /00/author
  title: 'About the Author'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---
# Digital Art History

Leonardo Impett, surname (at) biblhertz.it


This is an online, interactive, code- and data-enhanced textbook for Digital Art History, focusing especially on images: computer vision, image processing and visual computing. It is based on the JupyterBook software. 

There are a few reasons to use such a JupyterBook,  but the greatest is the ability to have inline executible Python code alongside text. There aren't many user-friendly applications for computer vision, so we have to engage directly with code - JupyterBook provides a good in-between-state, where you can run existing code, and add, remove, or change code at your will, all in a web browser. 

Some inline code will be non-interactive, as follows:

`print('Hello, World!')` 

And some will be interactive, like **[Chapter One](01/hog-test)**. 

## Overall Plan

Here's a quick overview of the planned contents:

1. Introduction to Digital Images
   1. Pixels, Images as Arrays, Rotations, Gamma Corrections, Colour Conversion
   2. Digital Images in Cultural Heritage: metadata, IIIF, Colourbars, Multispectral, PHAROS
2. Image Matching
   1. Features: HOG, SIFT
   2. What is image similarity anyway?
   3. Building a search engine. Example: VISE
   4. Matching automatically. Example: Nova Plantarum
3. Detecting things
   1. What is a classifier? 
      1. Generating metadata
      2. Detections (as classifications)
      3. Clever/live searches: retraining SVM live
   2. Face detection
      1. Le Brun
   3. Pose detection
  1. Warburg work
4. Advanced topics, Neural Networks
   1. Neural networks etc
   2. Image to image translation: recolouring, inpainting
   3. Pixelwise segmentation maps
   4. GANs

