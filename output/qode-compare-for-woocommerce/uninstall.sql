-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qode_compare_for_woocommerce_framework_permalinks', 'qode_compare_for_woocommerce_framework_permalinks_updated', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'qode_compare_for_woocommerce_user_comparison_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'qode_compare_for_woocommerce_user_comparison_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'qode_compare_for_woocommerce_user_comparison_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'qode_compare_for_woocommerce_user_comparison_items');

