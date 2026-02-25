#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartsupp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_count'"
