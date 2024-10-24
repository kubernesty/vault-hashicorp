storage "file" {
    path = "/Users/eherbas/vault"
}

listener "tcp" {
    address = "0.0.0.0:8600"
    tls_disable = 1
}

disable_mlock = true
ui = true
log_level = "INFO"

#needed when start a prod server, vault server -config=./config.hcl
