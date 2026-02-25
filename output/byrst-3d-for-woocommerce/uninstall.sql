-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byrst_woocommerce_plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('byrst_woocommerce_plugin_file_android', 'byrst_woocommerce_plugin_file_ios', 'byrst_woocommerce_plugin_file_poster', 'byrst_woocommerce_plugin_file_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('byrst_woocommerce_plugin_file_android', 'byrst_woocommerce_plugin_file_ios', 'byrst_woocommerce_plugin_file_poster', 'byrst_woocommerce_plugin_file_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('byrst_woocommerce_plugin_file_android', 'byrst_woocommerce_plugin_file_ios', 'byrst_woocommerce_plugin_file_poster', 'byrst_woocommerce_plugin_file_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('byrst_woocommerce_plugin_file_android', 'byrst_woocommerce_plugin_file_ios', 'byrst_woocommerce_plugin_file_poster', 'byrst_woocommerce_plugin_file_alt', '_wp_page_template');

