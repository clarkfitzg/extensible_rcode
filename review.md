# Customizable and Extensible Code

What does it mean for code to be customizable and extensible? Essentially
it means to leave things flexible and gives freedom to the user. We'll look
at a specific example to see what it means.

I'm writing software to transform regular R code into a version that uses
task parallelism, which means that different code blocks execute
simultaneously. I have the following computational model in mind:

![basic model](basic_model.png)
