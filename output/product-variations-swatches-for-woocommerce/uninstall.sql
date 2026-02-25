-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vi_woo_product_variation_swatches_params', 'active_sitewide_plugins', 'woocommerce_notify_no_stock_amount', 'villatheme_hide_admin_toolbar', 'wc_attribute_taxonomies', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vi_woo_product_variation_swatches_product_attribute', 'vi_wpvs_terms_params');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vi_woo_product_variation_swatches_product_attribute', 'vi_wpvs_terms_params');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vi_woo_product_variation_swatches_product_attribute', 'vi_wpvs_terms_params');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vi_woo_product_variation_swatches_product_attribute', 'vi_wpvs_terms_params');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

