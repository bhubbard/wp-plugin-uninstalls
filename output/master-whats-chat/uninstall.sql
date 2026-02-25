-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmwc_settings_data', 'tmwc_settings_data_skin_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmwc_show_woocommerce_button', 'tmwc_woocommerce_button_attendant_id', 'tmwc_woocommerce_button_layout', 'tmwc_woocommerce_button_attendant_photo_or_icon', 'tmwc_woocommerce_button_attendant_title', 'tmwc_woocommerce_button_attendant_description', 'tmwc_woocommerce_button_position', 'tmwc_woocommerce_button_position_shop_archive');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmwc_show_woocommerce_button', 'tmwc_woocommerce_button_attendant_id', 'tmwc_woocommerce_button_layout', 'tmwc_woocommerce_button_attendant_photo_or_icon', 'tmwc_woocommerce_button_attendant_title', 'tmwc_woocommerce_button_attendant_description', 'tmwc_woocommerce_button_position', 'tmwc_woocommerce_button_position_shop_archive');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmwc_show_woocommerce_button', 'tmwc_woocommerce_button_attendant_id', 'tmwc_woocommerce_button_layout', 'tmwc_woocommerce_button_attendant_photo_or_icon', 'tmwc_woocommerce_button_attendant_title', 'tmwc_woocommerce_button_attendant_description', 'tmwc_woocommerce_button_position', 'tmwc_woocommerce_button_position_shop_archive');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmwc_show_woocommerce_button', 'tmwc_woocommerce_button_attendant_id', 'tmwc_woocommerce_button_layout', 'tmwc_woocommerce_button_attendant_photo_or_icon', 'tmwc_woocommerce_button_attendant_title', 'tmwc_woocommerce_button_attendant_description', 'tmwc_woocommerce_button_position', 'tmwc_woocommerce_button_position_shop_archive');

