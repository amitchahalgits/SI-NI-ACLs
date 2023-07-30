server      = true
bootstrap   = true
client_addr = "0.0.0.0"
data_dir    = "/consul/data"

ui_config {
  enabled = true
}

log_level = "debug"

## Service mesh CA configuration
connect {
  enabled     = true
  ca_provider = "vault"
  ca_config {
    address               = "http://10.0.0.2:8200"
    token                 = "hvs.CAESIKB6r0bBE4j2OjFqzREh1j2kPAjQ0G9P-BIuux8B33PfGh4KHGh2cy5iMWJOOVpvQldTWXFaNkVJSzN5MGJMV0g"
    root_pki_path         = "connect_root"
    intermediate_pki_path = "connect_inter"
    leaf_cert_ttl         = "72h"
    rotation_period       = "2160h"
    intermediate_cert_ttl = "8760h"
    private_key_type      = "rsa"
    private_key_bits      = 2048
  }
}
