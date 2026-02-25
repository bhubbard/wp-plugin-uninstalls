-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmip_api_token', 'pmip_zone_id', 'pmip_ruleset_id', 'pmip_rule_id', 'pmip_plugin_status', 'pmip_scan_interval', 'pmip_failed_attempts', 'pmip_block_duration', 'pmip_max_logs', 'pmip_newsletter_subscribed', 'pmip_newsletter_subscribers', 'pmip_blocked_ips', 'pmip_failed_attempts_log', 'pmip_ip_whitelist');

