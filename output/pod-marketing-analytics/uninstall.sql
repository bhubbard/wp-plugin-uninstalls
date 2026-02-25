-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_show_gutenberg_blocks';
DELETE FROM wp_options WHERE option_name LIKE '%_server_side';
DELETE FROM wp_options WHERE option_name LIKE '%_options_field';
DELETE FROM wp_options WHERE option_name LIKE '%_woocommerce_options_field';
DELETE FROM wp_options WHERE option_name LIKE '%_server_showpopups';
DELETE FROM wp_options WHERE option_name LIKE '%_show_tinymce';
DELETE FROM wp_options WHERE option_name LIKE '%_v2_script_url';
DELETE FROM wp_options WHERE option_name LIKE '%_stale_cart_map';
DELETE FROM wp_options WHERE option_name LIKE '%_wc_actions_forms';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocommerce_persistent_cart');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocommerce_persistent_cart');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocommerce_persistent_cart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocommerce_persistent_cart');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%';

