#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'awl_ms_settings_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'awl_ms_settings_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'awl_ms_settings_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awl_ms_settings_%'"
