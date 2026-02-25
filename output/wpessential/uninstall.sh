#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpe_auth_settings'
wp option delete 'wpe_settings'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unuse_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unuse_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unuse_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unuse_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
