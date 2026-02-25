#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcnb_basic_options'
wp option delete 'mcnb_basic_last_settings_update'
wp option delete 'mcnb_db_version'
wp option delete 'mcnb_realtime_stats'
wp option delete 'mcnb_security_logs'
wp option delete 'mcnb_options'
wp option delete 'mcnb_basic_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mcnb_last_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mcnb_last_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mcnb_last_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mcnb_last_save'"
