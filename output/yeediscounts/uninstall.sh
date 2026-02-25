#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yk_dd_apply_product_discount_to'
wp option delete 'yk_dd_show_bulk_discount_table'
wp option delete 'yk_dd_position_to_show_bulk_table'
wp option delete 'yk_dd_position_to_show_discount_bar'
wp option delete 'yk_dd_show_cart_notifications'
wp option delete 'yk_dd_disable_coupon_when_rule_applied'
wp option delete 'yk_dd_cart_notification_text'
wp option delete 'yk_dd_free_shipping_method_title'
wp option delete 'yk_dd_show_discounted_price'
wp option delete 'yk_dd_show_discounted_price_pages'
wp option delete 'yk_dd_show_strikeout_on_cart_page'
wp option delete 'yk_dd_show_on_sale_badge'
wp option delete 'yk_dd_customize_sale_badge'
wp option delete 'yk_dd_force_override_sale_badge'
wp option delete 'yk_dd_sale_badge_text'
wp option delete 'yk_dd_show_percentage_in_sale_badge'

