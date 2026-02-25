#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpc_settings_perpage'
wp option delete 'bbpc_settings_disableajax'
wp option delete 'bbpc_translations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_contacts'"
