---
title: Sonic Execute
---

### Run One Liners

Sonic provides a way to execute commands remotely and securely across a list of AWS servers.  It does this by leveraging [Amazon EC2 Run Command](https://aws.amazon.com/ec2/execute/).  Sonic hides any complexity and provides a simple interface for you. Example:

```sh
sonic execute hi-web-stag uptime
```

Let's do something more useful:

```sh
sonic execute hi-web-stag yum install -y curl
```

The output of the commands ran are showed in the EC2 Run Command Console.  Here's an example:

```
$ sonic execute hi-web-stag uptime
Command sent to AWS SSM. To check the details of the command:
aws ssm list-commands --command-id 4133e5eb-aa18-40dd-be25-a176eb15e515
Pro tip: the aws ssm command is already in your copy/paste clipboard.
$
```

### Run Scripts

Sometimes you might want to run more than just a one-liner command. If you need to run a full script, you can provide the file path to the script by desonating it with `file://`.  For example, here's a file called `hi.sh`:

```bash
#!/bin/bash
echo "hello world"
```

Here's how you run that file:

```sh
sonic execute hi-web-stag file://hi.sh
```

The file gets read by `sonic execute` and sent to EC2 Run Command to be executed.

<a id="prev" class="btn btn-basic" href="{% link _docs/tutorial-ecs-run.md %}">Back</a>
<a id="next" class="btn btn-primary" href="{% link _docs/settings.md %}">Next Step</a>
<p class="keyboard-tip">Pro tip: Use the <- and -> arrow keys to move back and forward.</p>