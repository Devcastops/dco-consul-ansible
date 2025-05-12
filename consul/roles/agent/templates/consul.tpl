{{ '{{' }} with secret "core/consul/creds/client" {{ '}}' }}
acl{
  tokens{
    agent = "{{ '{{' }} .Data.token {{ '}}' }}"
  }
}
{{ '{{' }} end {{ '}}' }}