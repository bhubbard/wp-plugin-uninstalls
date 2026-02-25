-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qode_quick_view_for_woocommerce_framework_permalinks', 'qode_quick_view_for_woocommerce_framework_permalinks_updated', 'woocommerce_shop_page_id');

