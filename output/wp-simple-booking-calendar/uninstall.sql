-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsbc_settings', 'wpsbc_version', 'wpsbc_first_activation', 'wpsbc_upgrade_8_0_0', 'wpsbc_upgrade_8_0_0_skipped', 'wpsbc_serial_key', 'wpsbc_registered_website_id', 'wp-simple-booking-calendar-options', 'wpsbc_db_version', 'wpsbc_serial_status');

