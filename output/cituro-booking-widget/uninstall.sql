-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cituro_account_number', 'cituro_preset_service', 'cituro_preset_category', 'cituro_preset_resource', 'cituro_preset_location', 'cituro_enable_custom_script', 'cituro_custom_script', 'cituro_booking_widget_opened');

