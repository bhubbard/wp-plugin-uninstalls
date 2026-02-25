#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'teligro-rand-url'
wp option delete 'teligro_version'
wp option delete 'update_keyboard_time_teligro'
wp option delete 'wp-telegram-pro'
wp option delete 'wptp-rand-url'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'auto_channels_teligro'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telegram_receive_plugins_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telegram_receive_plugins_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telegram_receive_plugins_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telegram_receive_plugins_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_teligro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_teligro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_teligro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_teligro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_note_message_teligro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_note_message_teligro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_note_message_teligro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_note_message_teligro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
