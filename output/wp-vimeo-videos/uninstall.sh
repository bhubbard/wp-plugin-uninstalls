#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgv_settings'
wp option delete 'dgv_tmp_files'
wp option delete 'dgv_last_metadata_sync'
wp option delete 'dgv_last_status_sync'

# Delete Transients
wp transient delete 'dgv_settings_backup'
wp transient delete 'dgv_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_last_sync_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_last_sync_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_last_sync_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_last_sync_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dgv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dgv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dgv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dgv'"
