template {
   source      = "{{ config_dir }}/consul/{{type}}_cert.tpl"
   destination = "{{ consul_tls_dir }}/rend"
   command = "systemctl restart consul.service"
}