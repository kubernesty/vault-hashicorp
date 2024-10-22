# Full configuration options can be found at https://www.vaultproject.io/docs/configuration

storage "raft" {
    path = "/opt/vault/data"
    node_id = "vault-node-a"
}
listener "tcp" {
    address = "0.0.0.0:8200"
    cluster_address = "0.0.0.0:8201"
    tls_disable = true
}
ui = true
log_level = "ERROR"
cluster_name = "my-vault-cluster"
api_addr = "http://vault.gswhv.com:8200"
cluster_addr = "https://vault-node-a.gswhv.com:8201"

#vault operator diagnose -config=/etc/vault.d/vault.hcl - run this command to diagnose the vault configuration file
