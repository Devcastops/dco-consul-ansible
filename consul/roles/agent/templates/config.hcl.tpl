template {
   source      = "{{ config_dir }}/consul/consul.tpl"
   destination = "{{ consul_config_dir }}/consul.hcl"
   command = "systemctl restart consul.service"
}