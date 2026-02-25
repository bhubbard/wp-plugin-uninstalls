-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsp_remove_data', 'wpsp-lcode', 'plugin_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pay_woocommerce_enrolled_class_access_counter', 'simple_local_avatar', 'displaypicture', 'p_displaypicture', '_regular_price', '_related_class', '_sale_price', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pay_woocommerce_enrolled_class_access_counter', 'simple_local_avatar', 'displaypicture', 'p_displaypicture', '_regular_price', '_related_class', '_sale_price', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pay_woocommerce_enrolled_class_access_counter', 'simple_local_avatar', 'displaypicture', 'p_displaypicture', '_regular_price', '_related_class', '_sale_price', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pay_woocommerce_enrolled_class_access_counter', 'simple_local_avatar', 'displaypicture', 'p_displaypicture', '_regular_price', '_related_class', '_sale_price', '_price');

