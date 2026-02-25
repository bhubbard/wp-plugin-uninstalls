#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosv_enable'
wp option delete 'woosv_hide_parent'
wp option delete 'woosv_hide_parent_exclude'
wp option delete 'woosv_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosv_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosv_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosv_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosv_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosv_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosv_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosv_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosv_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosv_name'"
