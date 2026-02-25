#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosw_settings'
wp option delete 'woosw_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosw_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosw_list_%'"
wp option delete 'woosw_page_id'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosw_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosw_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosw_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosw_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosw_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosw_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosw_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosw_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosw_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosw_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosw_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosw_count'"
