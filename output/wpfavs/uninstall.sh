#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wpfav_apikey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wpfav_quickkey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wpfav_wpuser'"
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'wpfav_install'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_wpfav_dismissed_notice_%'"
