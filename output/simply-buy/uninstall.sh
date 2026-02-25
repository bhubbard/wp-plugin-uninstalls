#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbuy_settings_pages'
wp option delete 'sbuy_branding_toggle_blocked_until'
wp option delete 'sbuy_backlink_text'
wp option delete 'classic-editor-replace'
wp option delete 'sbuy_settings_time'
wp option delete 'sbuy_settings_finance'

# Clear Cron Jobs
wp cron event delete 'sbuy_clear_old_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simplybuy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simplybuy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simplybuy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simplybuy'"
