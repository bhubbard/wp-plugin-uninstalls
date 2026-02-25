#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_calc_shipping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'old_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'old_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'old_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'old_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hidden'"
