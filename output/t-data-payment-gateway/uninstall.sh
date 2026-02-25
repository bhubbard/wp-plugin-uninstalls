#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unpaid_orders_daily_process'
wp option delete 'webhook_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_piva'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_pec'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_pec'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_pec'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_pec'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_sdi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_sdi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_sdi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_sdi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_cf'"
