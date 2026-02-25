-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE 'wcpa_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcpa_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcpa_exclude_global_forms', '_sku', 'wcpa_product_meta_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcpa_exclude_global_forms', '_sku', 'wcpa_product_meta_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcpa_exclude_global_forms', '_sku', 'wcpa_product_meta_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcpa_exclude_global_forms', '_sku', 'wcpa_product_meta_order');

