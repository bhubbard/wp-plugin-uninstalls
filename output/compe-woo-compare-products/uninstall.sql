-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_product_compare_params', 'wpc_plugin_page_id', 'woocommerce_cart_redirect_after_add', 'villatheme_hide_admin_toolbar', 'wc_attribute_taxonomies', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wooCompare_products', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wooCompare_products', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wooCompare_products', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wooCompare_products', '_wp_page_template');

