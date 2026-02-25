-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mail_cloak_honeypot_triggers', 'mail_cloak_bot_log', 'mail_cloak_ip_blocklist', 'mail_cloak_settings');

