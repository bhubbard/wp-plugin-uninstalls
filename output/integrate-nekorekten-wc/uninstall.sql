-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inwc_settings_group', 'inwc_settings_turn_on', 'inwc_settings_API_key', 'inwc_settings_colum_orders_page', 'inwc_settings_show_in_admin_email', 'abl_inwc_version');

