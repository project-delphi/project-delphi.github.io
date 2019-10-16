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

One might say that we are looking univariate continuous data from two or more different small samples. Small is relative, but less than a few thousand examples certainly causes noise in estimates for many kinds of univariate continuous distribution.

So what is the objective from a machine learning perspective? and what can be done?

Well, this could be cast as an unsupervised learning problem. Some possibilities are:

* use method of moments: compare empirical moments across samples. The problem is that this is sensitive to the random noise in the data generating process.

* hypothesis test parametric fits: use sample sizes and asymptotic theory. This is limited because only simple parametric forms have known asymptotic properties - additionally they are only asymptotically true.

* compare non-parametric density estimates: estimate densities for different samples. Doing straight eyeballing might be problematic though. Some good ways to try this are:
    - sums of weighted observation centered kernels
    - Bayesian hierarchical mixtures of densities (which lends itself to clustering)

In particular there are many non-parametric chart and univariate statistic based approaches (Mann-Whitney-Wilcoxon, Anderson-Darling, Kolmogorov-Smirov, permutation test, Earth Mover's Distance, visually inspecting densities and more).

I suspect that any of these approaches are fine when the differences between samples are quite pronounced - but when the treatment effects are subtle but samples - it will be difficult to tell noise from genuine effects.

So a problem exists. We don't allow in our inference for data that is plausibly similar to what was actually observed. For a few different observations in one or other sample, our inferences can be reversed.

The remedies are to use Bayesian or Ensembling strategies to loosen a model's adherence to and enthusiasm for the data observed. If we had large samples (Yay! big data Yay!), then this is less necessary.

I'm quite excited to read up on Bayesian fields as a way to allow the data to breathe when making estimates of densities. 🧗🏾‍