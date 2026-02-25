-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpestate_custom_fields_list', 'wp_estate_custom_fields', 'wpresaddon_can_update_slider', 'wp_estate_theme_slider', 'wp_estate_feature_list', 'wp_estate_status_list');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_theme_slider', 'temp_is_update_hidden_address', 'property_address', 'property_zip', 'hidden_address', '_wp_page_template', 'image_to_attach');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_theme_slider', 'temp_is_update_hidden_address', 'property_address', 'property_zip', 'hidden_address', '_wp_page_template', 'image_to_attach');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_theme_slider', 'temp_is_update_hidden_address', 'property_address', 'property_zip', 'hidden_address', '_wp_page_template', 'image_to_attach');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_theme_slider', 'temp_is_update_hidden_address', 'property_address', 'property_zip', 'hidden_address', '_wp_page_template', 'image_to_attach');

