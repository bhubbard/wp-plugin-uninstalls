-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('liverecover_connected_dismissed', 'woocommerce_shop_page_id');

