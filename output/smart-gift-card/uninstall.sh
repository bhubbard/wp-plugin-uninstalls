#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_gift_card_plugin_version'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_currency'

# Clear Cron Jobs
wp cron event delete 'smart_gift_card_hourly_tasks'
wp cron event delete 'smart_gift_card_daily_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_gift_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_gift_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_gift_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_gift_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_redeemed_gift_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_redeemed_gift_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_redeemed_gift_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_redeemed_gift_codes'"
