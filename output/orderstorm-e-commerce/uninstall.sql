-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orderstorm_ecommerce_categories_menu_cache_timestamps', 'orderstorm_ecommerce_cart_info_for_plugin_updated', 'orderstorm_ecommerce_cart_info_for_plugin', 'last_time_checked_if_cart_info_was_updated', 'orderstorm_ecommerce_host_name', 'orderstorm_ecommerce_key_guid', 'orderstorm_ecommerce_product_category_page_id', 'orderstorm_ecommerce_product_page_id', 'orderstorm_ecommerce_checkout_page_id', 'orderstorm_ecommerce_do_not_verify_ssl_peer_certificate');

