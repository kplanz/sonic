module Sonic
  class Ecs < BaseCommand
    autoload :Docker, 'sonic/docker'

    class_option :bastion, desc: "Bastion jump host to use.  Defaults to no bastion server."
    class_option :cluster, desc: "ECS Cluster to use.  Default cluster is default"

    desc "exec [ECS_SERVICE]", "docker exec into running docker container associated with the service on a container instance"
    long_desc Help.text(:exec)
    def exec(service, *command)
      Docker.new(service, options.merge(command: command)).exec
    end

    # Cannot name the command run because that is a reserved Thor keyword :(
    desc "send [ECS_SERVICE]", "docker run with the service on a container instance"
    long_desc Help.text(:send)
    def send(service, *command)
      Docker.new(service, options.merge(command: command)).run
    end
  end
end
