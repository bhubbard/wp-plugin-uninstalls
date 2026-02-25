-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcps_plugin_info', 'wcps_settings', 'wcps_info', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcps_options', 'dokan_profile_settings', 'layout_elements_data', 'layout_options', 'custom_scripts', '_wp_attachment_image_alt', '_price', '_product_url', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcps_options', 'dokan_profile_settings', 'layout_elements_data', 'layout_options', 'custom_scripts', '_wp_attachment_image_alt', '_price', '_product_url', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcps_options', 'dokan_profile_settings', 'layout_elements_data', 'layout_options', 'custom_scripts', '_wp_attachment_image_alt', '_price', '_product_url', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcps_options', 'dokan_profile_settings', 'layout_elements_data', 'layout_options', 'custom_scripts', '_wp_attachment_image_alt', '_price', '_product_url', 'thumbnail_id');

