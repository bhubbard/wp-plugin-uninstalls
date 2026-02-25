#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cryptoniq_pay_txlist'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'
wp option delete 'cryptoniq_currency_prices'
wp option delete 'cryptoniq_coin_prices'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cryptoniq_cron_update_prices'
wp cron event delete 'cryptoniq_cron_check_orders'
wp cron event delete 'cryptoniq_cron_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cryptoniq_time_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cryptoniq_time_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cryptoniq_time_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cryptoniq_time_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
