-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quantwp_sidecart_cross_sells_limit', 'quantwp_sidecart_cross_sells_enabled', 'quantwp_sidecart_auto_open', 'quantwp_sidecart_shipping_bar_enabled', 'quantwp_sidecart_shipping_threshold', 'quantwp_sidecart_icon', 'quantwp_sidecart_shipping_threshold_color', 'quantwp_sidecart_carousel_background_color', 'quantwp_sidecart_checkout_btn_bg', 'quantwp_shipping_threshold');
DELETE FROM wp_options WHERE option_name LIKE 'quantwp_cross_sells_%';
DELETE FROM wp_options WHERE option_name LIKE 'quantwp_cart_fragment_%';

