-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acmebot_secret', 'acmebot_activation_redirect', 'acmebot_settings_errors');

