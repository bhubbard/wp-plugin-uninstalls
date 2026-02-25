-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('insertabot_api_key_encrypted', 'insertabot_security_logs', 'insertabot_enabled', 'insertabot_api_base', 'insertabot_api_key');

