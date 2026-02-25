-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_license_key_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plans_subtitle', 'plans_currency', 'plans_price', 'plans_duration', 'plans_features_1', 'plans_features_2', 'plans_features_3', 'plans_features_4', 'plans_features_5', 'plans_features_6', 'price_recomended', 'plans_button_label', 'plans_button_link', 'plans_button_link_target', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('plans_subtitle', 'plans_currency', 'plans_price', 'plans_duration', 'plans_features_1', 'plans_features_2', 'plans_features_3', 'plans_features_4', 'plans_features_5', 'plans_features_6', 'price_recomended', 'plans_button_label', 'plans_button_link', 'plans_button_link_target', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('plans_subtitle', 'plans_currency', 'plans_price', 'plans_duration', 'plans_features_1', 'plans_features_2', 'plans_features_3', 'plans_features_4', 'plans_features_5', 'plans_features_6', 'price_recomended', 'plans_button_label', 'plans_button_link', 'plans_button_link_target', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plans_subtitle', 'plans_currency', 'plans_price', 'plans_duration', 'plans_features_1', 'plans_features_2', 'plans_features_3', 'plans_features_4', 'plans_features_5', 'plans_features_6', 'price_recomended', 'plans_button_label', 'plans_button_link', 'plans_button_link_target', '_wp_attachment_image_alt');

