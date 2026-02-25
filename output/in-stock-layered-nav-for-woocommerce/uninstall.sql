-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_no_stock_amount');
DELETE FROM wp_options WHERE option_name LIKE 'wc_layered_nav_query_post_ids_%';

