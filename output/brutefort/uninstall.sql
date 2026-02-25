-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brutef_whitelisted_ips', 'brutef_setup_wizard_completed', 'brutef_rate_limit_settings', 'brutef_geo_settings', 'brutef_login_url_settings', 'brutefort_activation_redirect', 'brutef_free_activated');

