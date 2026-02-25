#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smodinrewriter-activated'
wp option delete 'smodinrewriter-temp-activated'
wp option delete 'smodinrewriter-settings'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'smodin-languages'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smodinrewriter-lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smodinrewriter-lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smodinrewriter-lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smodinrewriter-lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smodinrewriter-strength'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smodinrewriter-strength'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smodinrewriter-strength'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smodinrewriter-strength'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
