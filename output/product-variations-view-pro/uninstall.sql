-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dro_pvvp_is_enabled', 'dro_pvvp_show_range_price', 'dro_pvvp_show_main_product_short_description', 'dro_pvvp_show_product_gallery', 'woocommerce_currency_pos', 'woocommerce_price_trim_zeros');

