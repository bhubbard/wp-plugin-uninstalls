#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprev_disable_ssr'
wp option delete 'wprev_mdata_off'
wp option delete 'wprev_best_rating'
wp option delete 'wprev_ext_js'
wp option delete 'wprev_sync_off'
wp option delete 'wprev_site_id'
wp option delete 'wprev_replace'
wp option delete 'wprev_debug'
wp option delete 'wprev_active'
wp option delete 'wprev_api_key'
wp option delete 'wprev_version'
wp option delete '_wprev_sync_modif'
wp option delete '_wprev_sync_lock'
wp option delete 'wprev_last_id'
wp option delete 'wprev_last_modif'
wp option delete 'wprev_last_modif_offset_id'
wp option delete 'wprev_last_modif_2'

# Clear Cron Jobs
wp cron event delete 'wprev_sync_modif'
wp cron event delete 'wprev_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprev_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprev_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprev_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprev_id'"
