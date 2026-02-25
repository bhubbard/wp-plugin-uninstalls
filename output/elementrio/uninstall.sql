-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementrio_version', 'elementrio_installed_time', 'elementrio_do_activation_redirect', 'elementrio_settings', 'active_sitewide_plugins');

