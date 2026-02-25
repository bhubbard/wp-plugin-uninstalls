#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_postcode'
wp option delete 'greenreceipt_notifications_option_name'
wp option delete 'greenreceipt_store_category'
wp option delete 'greenreceipt_plugin_do_activation_redirect'
wp option delete 'greenreceipt_notifications_db_version'

# Clear Cron Jobs
wp cron event delete 'greenreceipt_check_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_phone'"
