---
title: "Why Did ChatGPT Get My Simple Statistics Question Wrong?"
author: Thiyanga Talagala
date: '2026-10-23'
category: [LLM, Probability, AI, Trustworthy AI, ChatGPT]
tags: [LLM, Probability, AI, Trustworthy AI, ChatGPT]
---



These days, I have been running a few experiments to understand how LLMs generate answers.

I asked ChatGPT a simple statistics question:

“The number of calls received at an information desk during a one-hour period follows a Poisson distribution with a mean of 10 calls. Write R code required to calculate the probability of receiving more than 6 but fewer than 13 calls within a one-hour period.”

To my surprise, ChatGPT gave an incorrect answer.

Interestingly, the approach was correct, but the final answer was wrong. 
Here are the screenshots of my conversation with ChatGPT.

<img src="/post/oct132026/chatgpt1.png" alt="posit" width="900"/>

At first, this seemed strange. If the code is correct and the calculation is correct, how can the final answer be wrong? Following are the follow ups from the conversation.

<img src="/post/oct132026/chatgpt4.png" alt="posit" width="900"/>

<img src="/post/oct132026/chatgpt3.png" alt="posit" width="900"/>

<img src="/post/oct132026/chatgpt2.png" alt="posit" width="900"/>

The key issue is that ChatGPT is not fundamentally a symbolic calculator or theorem prover. It generates an answer based on learned patterns and reasoning processes. 

The model predicts tokens, not truth.

At a fundamental level, an LLM learns relationships such as
\[
P(\text{next token}\mid\text{previous tokens}).
\]

This is much more sophisticated than simply "guessing the next word," but it still means that generating a plausible continuation is not the same thing as guaranteeing a mathematically correct result. The question I passed to the chatGPT may resemble thousands of examples seen during training, and the model can produce a familiar-looking answer without correctly executing every step.
