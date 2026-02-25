-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_enable_maplink_admin_email', 'sg_enable_picker', 'sg_enable_picker_billing', 'sg_enable_picker_shipping', 'sg_eneble_autodetect_user_location', 'sg_google_api', 'sgclp_detect_button_label', 'sg_map_title_for_billing', 'sg_hide_picker_fields', 'sg_map_title_for_shipping', 'sg_location_plugin_actived_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_lat', 'billing_long', 'shipping_lat', 'shipping_long');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_lat', 'billing_long', 'shipping_lat', 'shipping_long');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_lat', 'billing_long', 'shipping_lat', 'shipping_long');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_lat', 'billing_long', 'shipping_lat', 'shipping_long');

