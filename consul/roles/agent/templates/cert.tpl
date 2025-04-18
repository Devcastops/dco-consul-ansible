{{ '{{' }} with pkiCert "pki/issue/consul" "common_name={{ type }}.dc1.consul" "ttl=25h" {{ '}}' }}
{{ '{{' }} .Cert {{ '}}' }}{{ '{{' }} .CA {{ '}}' }}{{ '{{' }} .Key {{ '}}' }}
{{ '{{' }} .Key | writeToFile "{{ consul_tls_dir }}/dc1-{{ type }}-consul-0-key.pem" "{{ consul_user }}" "{{ consul_group }}" "0400" {{ '}}' }}
{{ '{{' }} .CA | writeToFile "{{ consul_tls_dir }}/consul-agent-ca.pem" "{{ consul_user }}" "{{ consul_group }}" "0644" {{ '}}' }}
{{ '{{' }} .Cert | writeToFile "{{ consul_tls_dir }}/dc1-{{ type }}-consul-0.pem" "{{ consul_user }}" "{{ consul_group }}" "0644" {{ '}}' }}
{{ '{{' }} end {{ '}}' }}