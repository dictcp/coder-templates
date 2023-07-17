# FIXME https://coder.com/docs/v2/latest/templates/parameters#legacy-parameters-are-unsupported-now
variable "docker_host" {
  description = "Specify location of Docker socket (check `docker context ls` if you're not sure)"
  sensitive   = true
  default = "unix:///var/run/docker.sock"
}

variable "docker_arch" {
  description = "Specify architecture of docker host (amd64, arm64, or armv7)"
  validation {
    condition     = contains(["amd64", "arm64", "armv7"], var.docker_arch)
    error_message = "Value must be amd64, arm64, or armv7."
  }
  sensitive = true
  default = "amd64"
}
