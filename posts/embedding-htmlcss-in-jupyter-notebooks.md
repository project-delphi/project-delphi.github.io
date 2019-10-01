<!--
.. title: Jupyter Notebook vs HTML
.. slug: jupyter-notebook-vs-html
.. date: 2019-09-24 14:18:47 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

I recently found myself putting together a presentation for PyData. I was excited for the opportunity to use the rise extension for jupyter notebooks.

All seemed well until I decided to style using HTML (headers, cute icon, that kind of stuff) into some markdown cells.

Turns out that although markdown is a superset of HTML, jupyter markdown cells don't render html.

I also tried render in google sides and reveal.js - no joy.

It is a little convoluted to use a renderer to render html in html - but markdown just couldn't do everything I wanted.

In the end, I found a more convoluted solution. I made all my slides as styled html pages. Then I took screenshots (yes screenshots!) and embedded screenshot images into markdown cells marked as slides with rise.

This has to be an exmaple of glue code!

Painful. Experience. 