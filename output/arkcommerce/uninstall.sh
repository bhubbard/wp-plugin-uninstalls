#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ark_gateway_settings'

# Clear Cron Jobs
wp cron event delete 'arkcommerce_refresh_exchange_rate'
wp cron event delete 'arkcommerce_check_for_open_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ark_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ark_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ark_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ark_total'"
