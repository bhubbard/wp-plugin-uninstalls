-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'limit_login_allow_local_options', 'limit_login_use_local_options', 'site_name', 'limit_login_app_config', 'llar_dashboard_redirect');

