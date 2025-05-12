template {
   source      = "{{ config_dir }}/consul/cert.tpl"
   destination = "{{ consul_tls_dir }}/rend"
   command = "systemctl restart consul.service"
}

template {
   source      = "{{ config_dir }}/consul/consul.tpl"
   destination = "{{ consul_config_dir }}/consul.hcl"
   command = "systemctl restart consul.service"
}