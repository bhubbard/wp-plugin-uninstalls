#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_esewa_settings'

# Clear Cron Jobs
wp cron event delete 'esewa_payment_status_check_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eSewa Reference Code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eSewa Reference Code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eSewa Reference Code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eSewa Reference Code'"
