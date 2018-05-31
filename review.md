% Customizable and Extensible Code

What does it mean for code to be customizable and extensible? Essentially
it means to leave things flexible and gives freedom to the user. We'll
explore these concepts in the context of a concrete example.

I'm writing software to transform regular R code into a version that uses
task parallelism, which means that different code blocks execute
simultaneously. I have the following computational model in mind:

![basic model](basic_model.png)

The package contains a function `task_parallel` implementing the above
steps, so users write:

```{r}
newcode = task_parallel(oldcode)
```

We discuss how to design this function `task_parallel` to be flexibile and
customizable with respect to the four objects in the diagram:

- input code
- task graph
- schedule
- output code

and with respect to the three functions in the diagram:

- dependency analysis
- scheduling algorithm
- code generator

## Least customizable

Here's the signature for the least flexible signature to implement this:

```{r}
task_parallel = function(code)
{   ...
```

This has the advantage of simplicity for the user.
The user only controls what code they pass in. The scheduling algorithm and
code generator are hard coded so that the user has no control over the
behavior of the `task_parallel` function.
