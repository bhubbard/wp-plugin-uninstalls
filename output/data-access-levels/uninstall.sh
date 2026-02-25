#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dal_plugin_version'
wp option delete 'dal_post_types'
wp option delete 'dal_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dal_userlevel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dal_userlevel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dal_userlevel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dal_userlevel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dal_postlevel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dal_postlevel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dal_postlevel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dal_postlevel'"
