-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmatc_ajax_cart_replace_mode', 'pmatc_ajax_cart_custom_pages', 'pmatc_ajax_cart_quantity_type', 'pmatc_ajax_cart_plus_button_text', 'pmatc_ajax_cart_minus_button_text', 'pmatc_ajax_cart_button_background_color', 'pmatc_ajax_cart_button_text_color', 'pmatc_ajax_cart_before_button_text', 'pmatc_ajax_cart_after_button_text', 'pmatc_ajax_cart_variable_product_text', 'pmatc_ajax_cart_external_product_text', 'pmatc_ajax_cart_grouped_product_text', 'pmatc_ajax_cart_custom_css');

