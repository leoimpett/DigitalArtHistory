---
redirect_from:
  - "/01/digital-images-ch"
interact_link: content/01/digital_images_ch.ipynb
kernel_name: python3
has_widgets: false
title: 'Digital Images in Cultural Heritage'
prev_page:
  url: /01/pixels_and_arrays
  title: 'Pixels and Arrays'
next_page:
  url: /02/image_matching
  title: 'Image Matching'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Digital Images in Cultural Heritage



Digital images are used for all sorts of things in the cultural heritage sector, and in art history institutions more generally. They mostly fall under: 
- scanned books (especially rare books or archival material), e.g. https://wdl.org/en/item/19340/view/1/1/ 
- scanned photographs, generally in black-and-white, e.g. http://foto.biblhertz.it/exist/foto/obj08128731
- born-digital photographs, especially of artworks owned by the institution, e.g. https://www.museodelprado.es/en/the-collection/art-work/the-glory/66149817-6f88-4e5f-a09a-81f63a84d145

Fortunately, institutions are coming to a consensus that these kinds of digital images should be stored in the same kind of framework. This isn't a course about metadata or standards, but it's appropriate to mention one: the International Image Operability Framework, or IIIF. 




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print('Starting, kernel ready')
import numpy as np
from matplotlib import pyplot as plt
%matplotlib inline
from skimage import io, transform, color
import urllib.request
import json 
print('Loaded libraries')

```
</div>

<div class="output_wrapper" markdown="1">
<div class="output_subarea" markdown="1">
{:.output_stream}
```
Starting, kernel ready
Loaded libraries
```
</div>
</div>
</div>



## International Image Interoperability Framework

IIIF (generally pronounced 'triple-eye-eff') gives us a standard way to refer to digital images, including works of art, rare books, etc. Rather than a file format, it's actually a kind of client-server API; a standard way for users (ourselves, websites) to ask institutions (museums, universities, libraries, etc) for their images on the web. 

IIIF has a number of important (and useful) characteristics: 
- we can ask a IIIF server for any crop of an image, at different resolutions (from thumbnail to full-quality)
- we can store annotations, not only about the image generally but about specific areas of the image
- we can pass metadata along with the image, and keep (and pass on) the original image metadata from the institution which provided the image

For instance from the website: 
https://www.wdl.org/en/item/19340/

we get a link to a IIIF manifest: 
https://www.wdl.org/en/item/19340/iiif/manifest.json

First, let's download that manifest:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
with urllib.request.urlopen("https://www.wdl.org/en/item/19340/iiif/manifest.json") as url:
    data = json.loads(url.read().decode())
    print(data)

```
</div>

</div>



As we can see, the manifest includes all kinds of information about a host of different images (in this case, a whole scanned book). Let's grab the IIIF Canvases (in which we should find the actual images): 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
canvases = data['sequences'][0]['canvases']
imurls = [canvas['images'][0]['resource']['@id'] for canvas in canvases]
print(imurls[42])

```
</div>

</div>



Now we have a correct URL for an image, let's try to download it and print it to the screen: 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
#Note that we can pass `io.imread` (from the `sklearn` library) an image URL (as in this case), as well as a filepath: 
testim = io.imread(imurls[42])
plt.imshow(testim)

```
</div>

</div>



Correct! This hasn't been a full intro to IIIF - see their website for (many) more details - but it should give you a general idea of how we extract the actual image data, as well as how to extract different bits of information in Python from `json` files on the internet - a common need for DH projects. 

