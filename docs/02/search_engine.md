---
redirect_from:
  - "/02/search-engine"
interact_link: content/02/search_engine.ipynb
kernel_name: python3
has_widgets: false
title: 'Building a visual search engine'
prev_page:
  url: /02/features
  title: 'Feature matching, HOG, SIFT'
next_page:
  url: /02/auto_matching
  title: 'Automatic matching'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Building a search engine



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
import numpy as np
from matplotlib import pyplot as plt
%matplotlib inline
import glob
import tqdm
from skimage import io, transform

```
</div>

</div>



We're going to build a very simple search engine: 
- define some input images
- extract features from them (in this case HOG) 
- build a nearest neighbour tree
- be able to call the NN tree to fetch results. 

