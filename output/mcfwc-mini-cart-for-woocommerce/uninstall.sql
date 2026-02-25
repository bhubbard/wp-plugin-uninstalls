-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcfwc_minicart_options', 'mcfwc_minicart_color_options', 'mcfwc_custom_image_cart_icon');

