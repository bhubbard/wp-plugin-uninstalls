-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2location_redirection_api_key', 'ip2location_redirection_database', 'ip2location_redirection_debug_log_enabled', 'ip2location_redirection_download_ipv4_only', 'ip2location_redirection_enable_region_redirect', 'ip2location_redirection_enabled', 'ip2location_redirection_first_redirect', 'ip2location_redirection_ignore_query_string', 'ip2location_redirection_ip_whitelist', 'ip2location_redirection_lookup_mode', 'ip2location_redirection_noredirect_enabled', 'ip2location_redirection_private_key', 'ip2location_redirection_real_ip_header', 'ip2location_redirection_rules', 'ip2location_redirection_session_message', 'ip2location_redirection_skip_admins', 'ip2location_redirection_skip_bots', 'ip2location_redirection_token', 'icl_sitepress_settings');
DELETE FROM wp_options WHERE option_name LIKE 'ip2location_redirection_%';

