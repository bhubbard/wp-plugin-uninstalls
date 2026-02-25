#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posadzimy_do_activation_redirect'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'posadzimy_balance'
wp option delete 'woocommerce_calc_taxes'

# Clear Cron Jobs
wp cron event delete 'posadzimy_balance_cron_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
