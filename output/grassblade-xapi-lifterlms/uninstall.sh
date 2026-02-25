#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grassblade_tincan_endpoint'
wp option delete 'grassblade_free_addons'
wp option delete 'grassblade_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_xapi_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_xapi_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_xapi_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_xapi_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xapi_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xapi_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xapi_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xapi_content'"
