#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'config'
wp option delete 'blogbutler_ai_config'
wp option delete 'blogbutler_ai_lastRunLog'

# Clear Cron Jobs
wp cron event delete 'blogbutler_ai_import_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogbutler_ai_picture_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogbutler_ai_picture_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogbutler_ai_picture_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogbutler_ai_picture_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogbutler_ai_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogbutler_ai_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogbutler_ai_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogbutler_ai_id'"
