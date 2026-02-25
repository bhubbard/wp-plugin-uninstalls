#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imgsmaller_backup_dir'

# Delete Transients
wp transient delete 'imgsmaller_batch_lock'
wp transient delete 'imgsmaller_paused_notice'
wp transient delete 'imgsmaller_idle_notice'
wp transient delete 'imgsmaller_quota_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
