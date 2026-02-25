#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_pythia_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_pythia_admin_notice_%'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wc_pythia_sync_disabled_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wc_pythia_sync_disabled_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wc_pythia_sync_disabled_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wc_pythia_sync_disabled_notice'"
