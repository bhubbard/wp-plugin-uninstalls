#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woow_whatsapp_number'
wp option delete 'woow_show_after'
wp option delete 'woow_rev_notice_hide'
wp option delete 'woow_show_on_shop_single'
wp option delete 'woocommerce_currency'
wp option delete 'woow_custom_message'
wp option delete 'woow_hide_add_to_cart'
wp option delete 'woow_hide_proceed_to_checkout'

