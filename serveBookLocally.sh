jupyter-book build mybookname
sudo docker run --rm --security-opt label:disable  \
   -v /Users/impett/Documents/Code/DigitalArtHistory/mybookname:/srv/jekyll \
   -p 4000:4000 \
   -it -u 1000:1000 \
   emdupre/jupyter-book bundle exec jekyll serve --host 0.0.0.0