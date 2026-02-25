-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_builder_license', 'mobile_builder_configs', 'woocommerce_currency', 'gmw_options', 'woocommerce_enable_guest_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'product_attribute_color', 'product_attribute_image', '_wcml_custom_prices_status', 'mbd_location', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'mbd_subscribe', 'mbd_login_method', 'mbd_avatar', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcfmmp_profile_settings', 'product_attribute_color', 'product_attribute_image', '_wcml_custom_prices_status', 'mbd_location', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'mbd_subscribe', 'mbd_login_method', 'mbd_avatar', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'product_attribute_color', 'product_attribute_image', '_wcml_custom_prices_status', 'mbd_location', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'mbd_subscribe', 'mbd_login_method', 'mbd_avatar', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcfmmp_profile_settings', 'product_attribute_color', 'product_attribute_image', '_wcml_custom_prices_status', 'mbd_location', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'mbd_subscribe', 'mbd_login_method', 'mbd_avatar', 'thumbnail_id', '_wp_attachment_image_alt');

