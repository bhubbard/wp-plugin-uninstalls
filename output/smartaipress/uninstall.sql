-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartaipress_activate_data_sent', 'smartaipress_deactivate_data_sent', 'smartaipress_settings');

