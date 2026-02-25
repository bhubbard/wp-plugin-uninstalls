-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%remove_product_summary';
DELETE FROM wp_options WHERE option_name LIKE '%remove_related_products';
DELETE FROM wp_options WHERE option_name LIKE '%woocommerce_template_single_add_to_cart';
DELETE FROM wp_options WHERE option_name LIKE '%woocommerce_template_loop_add_to_cart';
DELETE FROM wp_options WHERE option_name LIKE '%wc_add_to_cart_message_html';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_if_empty_cart';
DELETE FROM wp_options WHERE option_name LIKE '%single_checkout_page';
DELETE FROM wp_options WHERE option_name LIKE '%remove_checkout_billing_fields';
DELETE FROM wp_options WHERE option_name LIKE '%remove_checkout_shipping_fields';
DELETE FROM wp_options WHERE option_name LIKE '%remove_order_comments';
DELETE FROM wp_options WHERE option_name LIKE '%remove_product_tabs';
DELETE FROM wp_options WHERE option_name LIKE '%remove_related_products_from_single_page';
DELETE FROM wp_options WHERE option_name LIKE '%checkout_page_layout';
DELETE FROM wp_options WHERE option_name LIKE '%add_last_product_to_single_page';
DELETE FROM wp_options WHERE option_name LIKE '%billing_checkout_page_layout';

