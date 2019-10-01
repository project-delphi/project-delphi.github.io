<!--
.. title: MLOps Teams or Tools
.. slug: mlops-teams-vs-tools
.. date: 2019-09-26 13:47:04 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
-->

Yesterday, I spoke at PyData Montreal. It was a lot of fun to discuss MLOps - particularly the parallels to DevOps advancement. 

I spoke to an individual about a contradiction in my talk. I discussed the friction in taking data products to production.

![](https://i2.wp.com/www.developermemes.com/wp-content/uploads/2013/12/Worked-Fine-In-Dev-Ops-Problem-Now.jpg?fit=400%2C299)

I first talked about how building a team with:

* Data Scientists/ML Researchers
* ML Engineers/Software Engineers
* Deployment Specialists

is one way to scale product development - the other being a unicorn superhero with all the skills combined. However I also noted the issue with ownership and understanding of the product can get muddled. Translating the product in intermediate steps can lose intention from product ideation to deployment.

I also ended with a quote:

> People who write the models/algorithms should be the ones to implement them.

So there's the contradiction. How can one person have all these skills and qualities. Well plainly, they can't.

![](https://miro.medium.com/max/550/1*A_uvkhhEuvh1Jj_rDy1DYA.jpeg)

After some thinking, this conflict can be resolved as has been happening with software development - particularly web development. We need *easy-to-use tools* in an integrated workflow that can be managed by a team of software/ml engineers who can continuously iterate in short cycles with *automated guardrails*. With the right workflow, it should become very difficult if not impossible to deploy failing ML code. Then we just need extremely focussed short cycles of development.

Once that happens, individual members of teams will rotate between roles and get experience (possibly mastery) across the board in ML development.

So using easy to use performant tools an ML developer can be augmented - much like Iron Man with his suit.

![](http://www.memesboy.com/wp-content/uploads/2018/08/Perhaps-But-Im-Also-Iron-Man-Meme.jpg)


Let's remember that not all web developers have embraced Agile CI/CD. In the same way, not all ML deployment will be following such a model. However, it should become increasingly uncommon to see long brittle development cycles.

Developer. Velocity. Matters.
