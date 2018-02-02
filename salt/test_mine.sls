{%- set mine_ips = salt['mine.get']('*', 'network.ip_addrs') %}

{%- for host, ip_addrs in mine_ips.items() %}
{{ host }}-dummy:
  cmd.run:
    - name: "ip route get {{ ip_addrs|first }}"
{%- endfor %}
