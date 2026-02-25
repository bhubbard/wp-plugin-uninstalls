-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpspicp_image_width', 'tpspicp_image_height', 'tpspicp_is_rtl', 'tpspicp_image_border_radius', 'tpspicp_label_sale', 'tpspicp_label_you_saved', 'tpspicp_show_total_discount_cart', 'tpspicp_show_regular_sale_price_cart', 'tpspicp_activate', 'tpspicp_add_on_sale');

