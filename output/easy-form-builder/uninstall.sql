-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emsfb_settings', 'emsfb_email_status', 'Emsfb_db_version', 'emsfb_pro', 'emsfb_version', 'emsfb_settings_transient');

