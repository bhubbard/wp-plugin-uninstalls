#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'calds_admin_settings_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'call_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'call_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'call_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'call_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time_from'"
