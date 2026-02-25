-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kitgenix_stock_sync_for_woocommerce_settings', 'kitgenix_stock_sync_for_woocommerce_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'kitgenix_stock_sync_for_woocommerce_kss_old_sku_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

