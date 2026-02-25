-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyforms_custom_login_settings', 'buddyforms_registration_page', 'active_sitewide_plugins');

