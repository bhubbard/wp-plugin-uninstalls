-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpnpb_activate_next_previous', 'tpnpb_activate_next_previous_mobile', 'tpnpb_label_previous', 'tpnpb_label_next', 'tpnpb_buttons_position', 'tpnpb_buttons_color', 'tpnpb_buttons_border', 'tpnpb_buttons_font_size', 'tpnpb_buttons_icons', 'tpnpb_custom_css', 'tpnpb_add_product_image', 'tpnpb_add_product_name', 'tpnpb_product_image_size');

