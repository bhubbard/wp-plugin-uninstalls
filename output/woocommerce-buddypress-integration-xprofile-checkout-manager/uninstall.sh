#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bf_xprofile_options'
wp option delete 'wc4bp_sync_mail'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%'"
