-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blwp_blacklist_enabled', 'blwp_auto_report', 'blwp_whitelist', 'blwp_manual_blocked_ips', 'blwp_max_login_attempts', 'blwp_temp_block_enabled', 'blwp_temp_block_duration', 'blwp_secret_key_enabled', 'blwp_secret_key', 'blwp_user_block_enabled', 'blwp_blocked_usernames', 'blwp_recaptcha_enabled', 'blwp_recaptcha_site_key', 'blwp_recaptcha_secret_key', 'blwp_block_xmlrpc', 'blwp_xmlrpc_log_attempts', 'blwp_max_xmlrpc_attempts', 'blwp_disable_dangerous_xmlrpc', 'blwp_maxmind_enabled', 'blwp_maxmind_account_id', 'blwp_maxmind_api_key', 'blwp_blocked_countries', 'blwp_third_party_blacklists', 'blwp_temp_blocked_ips', 'blwp_unblock_tokens', 'blwp_blacklisted_ips', 'blwp_last_update');
DELETE FROM wp_options WHERE option_name LIKE 'blwp_failed_attempts_%';

