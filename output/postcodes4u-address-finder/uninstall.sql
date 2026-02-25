-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pc4u_settings', 'postcodes4u_page_title', 'postcodes4u_page_name', 'postcodes4u_page_id', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments');

