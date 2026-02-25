#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wingsuite_wingsuite_modules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wingsuite_%'"
wp option delete 'wingsuite_dm_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wingsuite_%' OR option_name LIKE '_site_transient_wingsuite_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wingsuite_core_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wingsuite_core_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wingsuite_core_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wingsuite_core_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wingsuite_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wingsuite_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wingsuite_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wingsuite_search'"
