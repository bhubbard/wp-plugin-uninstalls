-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_traffic_jammer_abuseipdb', 'wp_traffic_jammer_options', 'wp_traffic_jammer_blocklist', ' wp_traffic_jammer_blocklist', ' wp_traffic_jammer_whitelist', 'wp_traffic_jammer_whitelist', ' wp_traffic_jammer_user_agents', 'wp_traffic_jammer_user_agents', 'trafficjammer_db_version');

