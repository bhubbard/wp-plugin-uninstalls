#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etivite_bp_edit_activity_lock_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_latest_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_latest_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_latest_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_latest_update'"
