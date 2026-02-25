-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('price_guard_apply_globally', 'price_guard_categories', 'price_guard_hide_price', 'price_guard_hide_add_to_cart', 'price_guard_custom_button_text', 'price_guard_button_function', 'price_guard_custom_button_link', 'price_guard_hide_prices', 'price_guard_button_text');

