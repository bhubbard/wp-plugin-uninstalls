#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kp_cspgen_settings_name'
wp option delete 'wpsh_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_kpshg_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_kpshg_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_kpshg_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kpshg_errors_%'"
