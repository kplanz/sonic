---
title: Quick Start
---

In a hurry? No sweat! Here's a quick overview of how to use sonic.

### Install

```sh
gem install sonic-screwdriver
```

### Usage

```sh
# ssh into an instance
sonic ssh i-0f7f833131a51ce35
sonic ssh hi-web # ec2 tag
sonic ssh hi-web --cluster staging # ecs service name
sonic ssh 7fbc8c75-4675-4d39-a5a4-0395ff8cd474 --cluster staging # ECS container id
sonic ssh 1ed12abd-645c-4a05-9acf-739b9d790170 --cluster staging # ECS task id

# docker exec to a running ECS docker container
sonic ecs exec hi-web

# docker run with same environment as the ECS docker running containers
sonic ecs sh hi-web

# run command on 1 instance
sonic execute i-0f7f833131a51ce35 uptime

# run command on all instances tagged with hi-web and worker
sonic execute hi-web,hi-worker uptime

# list ec2 instances
sonic list hi-web
```

Congratulations! You now know the basic sonic screwdriver commands now.

Learn more in the next sections.

<a id="next" class="btn btn-primary" href="{% link docs.md %}">Next Step</a>
<p class="keyboard-tip">Pro tip: Use the <- and -> arrow keys to move back and forward.</p>

