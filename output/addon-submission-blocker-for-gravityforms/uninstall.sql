-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asbfg_log_retention_days', 'asbfg_blocked_ips', 'asbfg_blocked_emails', 'asbfg_blocked_domains', 'asbfg_blocked_countries', 'asbfg_blocked_text', 'asbfg_custom_ip_message', 'asbfg_custom_email_message', 'asbfg_custom_domain_message', 'asbfg_custom_country_message', 'asbfg_custom_text_message');

