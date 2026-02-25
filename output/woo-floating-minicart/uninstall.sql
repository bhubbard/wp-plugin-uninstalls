-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Woo_floating_minicart_position', 'Woo_floating_minicart_show_shop_page_link', 'Woo_floating_minicart_show_best_selling_products', 'Woo_floating_minicart_hide', 'Woo_floating_minicart_offset', 'Woo_floating_minicart_primary_color', 'Woo_floating_minicart_secondary_color', 'Woo_floating_minicart_button_color');

