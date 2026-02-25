#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dud_plugin_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dud_plugin_settings_%'"
wp option delete 'dud_updated_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%s2member_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%s2member_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%s2member_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%s2member_custom_fields'"
