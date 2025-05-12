template {
   source      = "{{ config_dir }}/consul/cert.tpl"
   destination = "{{ consul_tls_dir }}/rend"
   command = "systemctl restart consul.service"
}
