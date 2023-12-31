resource "adguard_config" "main" {
  blocked_services = ["youtube", "reddit", "tiktok", "twitter"]

  dns = {
    upstream_dns = ["https://dns.quad9.net/dns-query"]
  }
}
