#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hesabpay_settings'
wp option delete 'hesabpay_transaction_logs'

# Clear Cron Jobs
wp cron event delete 'lite_hesabpay_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hesabpay_payout_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hesabpay_payout_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hesabpay_payout_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hesabpay_payout_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hesabpay_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hesabpay_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hesabpay_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hesabpay_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcv_hesabpay_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcv_hesabpay_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcv_hesabpay_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcv_hesabpay_account'"
