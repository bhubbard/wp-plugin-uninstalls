#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'price_guard_apply_globally'
wp option delete 'price_guard_categories'
wp option delete 'price_guard_hide_price'
wp option delete 'price_guard_hide_add_to_cart'
wp option delete 'price_guard_custom_button_text'
wp option delete 'price_guard_button_function'
wp option delete 'price_guard_custom_button_link'
wp option delete 'price_guard_hide_prices'
wp option delete 'price_guard_button_text'

