-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'pbxblowball_stores_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcf7-blowball_options', '_wpcf7-blowball_attribute_mapping', '_wpcf7-blowball_global_attribute_mapping', '_wpcf7-blowball_options_mapping', '_wpcf7-blowball_field_mapping', '_wpcf7-blowball_option_mapping', 'billing_last_name', 'billing_first_name', 'pbxbb_user_meta', '_unit', '_unit_product', '_unit_base', '_unit_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcf7-blowball_options', '_wpcf7-blowball_attribute_mapping', '_wpcf7-blowball_global_attribute_mapping', '_wpcf7-blowball_options_mapping', '_wpcf7-blowball_field_mapping', '_wpcf7-blowball_option_mapping', 'billing_last_name', 'billing_first_name', 'pbxbb_user_meta', '_unit', '_unit_product', '_unit_base', '_unit_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcf7-blowball_options', '_wpcf7-blowball_attribute_mapping', '_wpcf7-blowball_global_attribute_mapping', '_wpcf7-blowball_options_mapping', '_wpcf7-blowball_field_mapping', '_wpcf7-blowball_option_mapping', 'billing_last_name', 'billing_first_name', 'pbxbb_user_meta', '_unit', '_unit_product', '_unit_base', '_unit_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcf7-blowball_options', '_wpcf7-blowball_attribute_mapping', '_wpcf7-blowball_global_attribute_mapping', '_wpcf7-blowball_options_mapping', '_wpcf7-blowball_field_mapping', '_wpcf7-blowball_option_mapping', 'billing_last_name', 'billing_first_name', 'pbxbb_user_meta', '_unit', '_unit_product', '_unit_base', '_unit_price');

