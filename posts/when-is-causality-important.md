<!--
.. title: When Is Causality Important
.. slug: when-is-causality-important
.. date: 2019-09-29 16:34:44 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

A data scientist works on three types of problems:

1. Prediction
2. Description
3. Causality

I've been thinking of when it is that causality is important. The reason is for quite sometime I didn't put much thought into the area - it is messy. I had been sold on the statistical perspective that correlation is not causation, only controlled randomized experiments with enough confounders could determine causality [[1]](https://arxiv.org/abs/1804.10846).

Instead, I focussed on prediction - using regularization to press down on correlated (and possibly causal) features and weights so that deciding to leave features in or out didn't really matter. This strategy has worked combined with robustness techniques (such as bootstrap ensembling or randomized dropout) across many applications using learning algorithms.

![](https://i.imgflip.com/223wf5.jpg)

Regularizing is as if the ~~features~~ weights on features are flattened so that only the most essential and truly impactful are allowed to affect the outcome - like a flattened statue, the essence can still be determined.

This prediction focus matters when there is observational data and the objective is to query a model and return a "best" prediction on a target. Indeed, much of the billions in Machine Learning have been spent on getting prediction right.

## When does causality matter to an organization? 

Well it seems that it matters when the features can be manipulated. This is also referred to as applying treatments, having controls and considering regimes.

More importantly, if these features have high cost (such as appliance choice in a cloud server or deployment of physical/financial resources) then it makes sense to focus on causality.

![](http://www.kappit.com/img/pics/201602_1229_ihdaf_sm.jpg)

It depends on the context as to what cost is unbearable (reputation, dollar amount, ethical concerns) so that manipulating features becomes desirable.

This might be referred to as an asset allocation strategy in some fields of study.

![](https://imgflip.com/i/3c0wbp)

One is usually looking for the best way to distribute resources based on causal inference. By estimating the counterfactual - the distribution of not applying a treatment (manipulating features) -  to optimize the target of future examples - probablistically, since deterministic targets seldom occur in business or nature.

This is only possible because we make assumptions on the kind of relationship that might hold going from a controlled feature vs a treatment feature to the target. There are three schools making different assumptions:

1. Statistics using Propensity Matching
2. Computer Science using Structural Equation DAGs
3. Econometrics using Instrument Variables

The group of assumptions made affect the probability distribution of the target and hence the decisions made. This in part is why causal reasoning does not have clean well understood modelling approaches, unlike prediction.


Different. Assumptions. Generate. Different. Distributions.