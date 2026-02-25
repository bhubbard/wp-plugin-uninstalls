#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_remove_cart_item_settings_redirect'
wp option delete 'auto_remove_cart_item_custom_nonce'
wp option delete 'auto_remove_cart_item_dropdown'
wp option delete 'auto_remove_cart_item_time_interval_seconds'
wp option delete 'auto_remove_cart_item_time_interval_minutes'
wp option delete 'auto_remove_cart_item_time_interval_hours'
wp option delete 'auto_remove_cart_item_time_interval_days'
wp option delete 'auto_remove_cart_item_checkbox'

