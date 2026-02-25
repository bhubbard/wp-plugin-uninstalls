#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'single_exchange_timestamp'
wp option delete 'single_euro_btc'

# Clear Cron Jobs
wp cron event delete 'secpay_update_order_status'
wp cron event delete 'secpay_update_exchange_rate'
wp cron event delete 'secpay_check_order_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secpaycheckoutflow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secpaycheckoutflow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secpaycheckoutflow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secpaycheckoutflow'"
