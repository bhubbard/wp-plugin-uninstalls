-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdevartec_settings', 'wp_user_roles', 'wpdevart_booking_version_new', 'wpdevart_booking_version', 'wpdevart_permissions');

