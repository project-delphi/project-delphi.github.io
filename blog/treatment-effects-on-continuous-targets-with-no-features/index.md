<!--
.. title: Treatment Effects on Continuous Targets with No Features
.. slug: treatment-effects-on-continuous-targets-with-no-features
.. date: 2019-10-14 21:11:00 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

I found myself thinking about treatment effects on randomized small samples for continuous data (targets) with no features.

There's no need to worry about confounders since there are no features and we have randomizations - 🎲. Simpson's paradox doesn't apply when there are no features.

One might say that we are looking univariate continuous data from two or more different small samples. Small is relative, but less than a few thousand certainly causes noise in estimates for many kinds of univariate continuous distribution.

So what is the objective from a machine learning perspective, and what can be done?

Well, this could be cast as an unsupervised learning problem. Some possibilities are:

* use method of moments: compare empirical moments across samples. The problem is that this is sensitive to the random noise in the data generating process.

* hypothesis test parametric fits: use sample sizes and asymptotic theory.

* compare density estimates: estimate densities for different samples. Some good ways to do this are:
    - sums of weighted observation centered kernels
    - Bayesian hierarchical mixtures of densities (which lends itself to clustering)

In particular there are many density and non-parametric based approaches (Mann-Whitney-Wilcoxon, Anderson-Darling, Kolmogorov-Smirov, Earth Mover's Distance and more).

In all of this, one problem exists. We don't allow in our inference for data that is plausibly similar to what was actually observed. For some extreme observation, our results can become confused.

The remedies are to use Bayesian or Ensembling strategies to loosen a model's adherence to the data. If we had big data, then this is less necessary.

I'm quite excited to read up on Bayesian fields as a way to allow the data to breathe when making inferences. 🧗🏾‍