-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yk_dd_apply_product_discount_to', 'yk_dd_show_bulk_discount_table', 'yk_dd_position_to_show_bulk_table', 'yk_dd_position_to_show_discount_bar', 'yk_dd_show_cart_notifications', 'yk_dd_disable_coupon_when_rule_applied', 'yk_dd_cart_notification_text', 'yk_dd_free_shipping_method_title', 'yk_dd_show_discounted_price', 'yk_dd_show_discounted_price_pages', 'yk_dd_show_strikeout_on_cart_page', 'yk_dd_show_on_sale_badge', 'yk_dd_customize_sale_badge', 'yk_dd_force_override_sale_badge', 'yk_dd_sale_badge_text', 'yk_dd_show_percentage_in_sale_badge');

