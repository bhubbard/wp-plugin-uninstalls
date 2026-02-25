#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scr_refresh_post_types'
wp option delete 'scr_refresh_openai_key'
wp option delete 'scr_refresh_content_age'
wp option delete 'scr_refresh_modification_level'
wp option delete 'scr_refresh_batch_size'
wp option delete 'scr_refresh_custom_prompt'

# Clear Cron Jobs
wp cron event delete 'scr_refresh_process_batch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scr_refresh_last_edit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scr_refresh_last_edit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scr_refresh_last_edit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scr_refresh_last_edit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'src_backup_revision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'src_backup_revision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'src_backup_revision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'src_backup_revision'"
