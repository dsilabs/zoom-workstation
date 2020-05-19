
ZoomFoundry Workstation
=========

A self-contained instance of [Zoom](https://github.com/dsilabs/zoom) suitable for development.


usage:

    $ docker build -t zoom-workstation .
    $ docker run -it -p 8080:80 --name zoomfoundry zoom-workstation

then go to http://locahost:8080 in your browser.
