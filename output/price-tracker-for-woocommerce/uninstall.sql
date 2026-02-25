-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pricetrfo_display_on_product_page', 'pricetrfo_ph_line_color', 'pricetrfo_ph_pointer_color', 'pricetrfo_ph_label', 'pricetrfo_button_text');

