-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bruteguard_privacy_opt_in', 'bruteguard_saved_settings', 'bruteguard_deactivated', 'bruteguard_user', 'bruteguard_version', 'bruteguard_do_activation_redirect', 'bruteguard_apikey', 'bruteguard_whitelist', 'bruteguard_apikey_status', 'trusted_ip_header', 'bruteguard_error');

