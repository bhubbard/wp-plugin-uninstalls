-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsmd-setting-4', 'vsmd-setting-5', 'vsmd-setting-1', 'vsmd-setting-2', 'vsmd-setting-7', 'vsmd-setting-3', 'vsmd-setting-6', 'woocommerce_shop_page_id');

