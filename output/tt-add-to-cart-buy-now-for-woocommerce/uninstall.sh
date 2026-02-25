#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt_add_to_cart_enabled'
wp option delete 'tt_add_to_cart_icon_enabled'
wp option delete 'tt_buy_now_enabled'
wp option delete 'tt_buy_now_button_position'
wp option delete 'tt_buy_now_icon_enabled'
wp option delete 'tt_skip_cart_checkout_enabled'
wp option delete 'tt_buy_now_url'
wp option delete 'tt_buy_now_button_text'
wp option delete 'tt_add_to_cart_button_text'
wp option delete 'tt_add_to_cart_url'

