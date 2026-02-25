-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('add_to_cart_external', 'add_to_cart_grouped', 'add_to_cart_simple', 'add_to_cart_variable', 'add_to_cart_bookable', 'add_to_cart_external_single', 'add_to_cart_grouped_single', 'add_to_cart_simple_single', 'add_to_cart_variable_single', 'add_to_cart_bookable_single', 'add_to_cart_button_text_settings', 'add-to-cart-custom-text-activado');

