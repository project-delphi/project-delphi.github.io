<!--
.. title: On Robust ML Production Systems, Maybe
.. slug: on-robust-ml-production-systems-maybe
.. date: 2019-10-15 20:29:57 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

Recently I was thinking of a recipe for robust ML systems in production. This was following from my talk at PyData Montreal discussing the same topic - where I alluded to building reflective culture and attitudes ingrained into the development process.

I drew a blank as a first concrete recipe -- not just culture and ideas -- since there's so much to making ML work in production.

Can this recipe be codified into a set of principles and working strategies which get the desired result? I'm thinking of an agile manifesto for ML in production, something with cool sounding acronyms.

First let's be clear about our objective.

What do we mean by "robust ML systems in production". Some desirable qualities that come to mind are:

* scalability under plausible increase of data dimensions
* asynchronous scaling
* sensible handling for unexpected data
* graceful exit/handling of errors
* fast response scaling under plausible request load
* tolerance to network errors
* tolerance of errors in training data
* robust to changes in code development

Some of these requirements overlap with agile methodologies for modern web development. Which makes sense, since most useful software makes use of the web. But in addition, there are guards to areas of brittleness in ML systems.

Much of this is discussed in the now famous 2015 [Technical Debt Paper](https://papers.nips.cc/paper/5656-hidden-technical-debt-in-machine-learning-systems.pdf).

What is needed is systems that work well enough when deployed live in the field - with web scale of data and networked requests.

I wrote in an [earlier post](https://project-delphi.github.io/blog/mlops-teams-vs-tools/) how tools can help empower the individual developer. However, that's not the same as an ML in production manifesto.

Perhaps pruning a composite list from many practitioners and paper reviews.

How again was the [agile manifesto](https://agilemanifesto.org/) generated all those years ago at a Ski resort in Utah?

Reflective. Practice.