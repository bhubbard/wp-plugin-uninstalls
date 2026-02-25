-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axanet_disable_admin_bar_non_admins', 'axanet_disable_comments', 'axanet_login_logo_url', 'axanet_login_logo_width', 'axanet_login_logo_height', 'axanet_login_background_color', 'axanet_login_security_settings', 'axanet_login_security_enabled', 'axanet_blocked_ips', 'axanet_maintenance_settings', 'axanet_tools_settings', 'axanet_search_replace_settings', 'axanet_tools_transient');

