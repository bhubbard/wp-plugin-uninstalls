-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cofwc_whatsapp_number', 'cofwc_button_text', 'cofwc_show_in_product_page', 'cofwc_new_tab', 'cofwc_hide_price', 'cofwc_hide_add_cart_btn');

