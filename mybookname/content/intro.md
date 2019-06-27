# Digital Art History

Leonardo Impett, surname (at) biblhertz.it

Image and Visual Representation Lab, EPFL

Digital Humanities Lab, Bibliotheca Hertziana - Max Planck Institute for Art History



This is an online, interactive, code- and data-enhanced textbook for Digital Art History, focusing especially on images: computer vision, image processing and visual computing. It is based on the JupyterBook software. 

There are a few reasons to use such a JupyterBook,  but the greatest is the ability to have inline executible Python code alongside text. There aren't many user-friendly applications for computer vision, so we have to engage directly with code - JupyterBook provides a good in-between-state, where you can run existing code, and add, remove, or change code at your will, all in a web browser. 

Some inline code will be non-interactive, as follows:

`print('Hello, World!')` 

And some will be interactive, like **[Chapter One](01/hog-test)**. 

## Getting started

To get started, you may be interested in the following links.
Here are a few links of interest:

* **[Jupyter Book features](features/features)** is a quick demo and overview
  of Jupyter Books.

* **[The Jupyter Book Guide](guide/01_overview)**
  will step you through the process of configuring and building your own Jupyter Book.

### Installation

To install the Jupyter Book command-line interface (CLI), use `pip`!

```
pip install jupyter-book
```

### Create a new book

Once you've installed the CLI, create a new book using the demo book content
(the website that you're viewing now) with this command:

```
jupyter-book create mybookname --demo
```

### Build the markdown for your book

Now, build the markdown that Jekyll will use for your book. Run this command:

```
jupyter-book build mybookname
```

### That's it!

You can now either push your book to GitHub and serve the demo with gh-pages,
or modify the book with your own content.


## Acknowledgements

Jupyter Books was originally created by [Sam Lau][sam] and [Chris Holdgraf][chris]
with support of the **UC Berkeley Data Science Education Program and the
[Berkeley Institute for Data Science](https://bids.berkeley.edu/)**.

[sam]: http://www.samlau.me/
[chris]: https://predictablynoisy.com
