# Lambda SIGTERM - Gracefully shutting down lambdas
The [Lambda Extensions API](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-extensions-api.html) allows lambdas to register extensions. Once an extension is registered, the Lambda runtime will send a SIGTERM to the function code so the extension can collect metrics, etc.

What if you want the benefits of getting SIGTERM signals without the overhead of third-party extensions which collect metrics, logs, etc? Use `lambda-sigterm`!

This library creates a noop extension. All the extension does is register itself with the Lambda Extensions API, then blocks on a background thread. This makes it so the Lambda handler will receive SIGTERM signals.

## Python library
See [/python](/python) for python library code. [Package on pypi](https://pypi.org/project/lambda-sigterm/).
