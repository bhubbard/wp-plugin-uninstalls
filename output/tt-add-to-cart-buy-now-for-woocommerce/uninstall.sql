-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt_add_to_cart_enabled', 'tt_add_to_cart_icon_enabled', 'tt_buy_now_enabled', 'tt_buy_now_button_position', 'tt_buy_now_icon_enabled', 'tt_skip_cart_checkout_enabled', 'tt_buy_now_url', 'tt_buy_now_button_text', 'tt_add_to_cart_button_text', 'tt_add_to_cart_url');

