#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptc_delete_data_on_uninstall'
wp option delete 'PTC_plugin_version'
wp option delete 'ptc_activated_on'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'protect_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'protect_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'protect_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'protect_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_protect_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_protect_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_protect_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_protect_children'"
