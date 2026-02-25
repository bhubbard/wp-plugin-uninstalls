-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart', 'woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE '%_recomm';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date';

