jupyter-book build .
sudo docker run --rm --security-opt label:disable  \
   -v /home/leonardo/Documents/Teaching/DigitalArtHistory:/srv/jekyll \
   -p 8002:8002 \
   -it -u 1000:1000 \
   emdupre/jupyter-book bundle exec jekyll serve --port 8002 --host 0.0.0.0
