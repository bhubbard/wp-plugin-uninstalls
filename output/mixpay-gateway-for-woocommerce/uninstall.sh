#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mixpay_settings'

# Clear Cron Jobs
wp cron event delete 'check_payments_result_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MixPay payment complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MixPay payment complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MixPay payment complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MixPay payment complete'"
