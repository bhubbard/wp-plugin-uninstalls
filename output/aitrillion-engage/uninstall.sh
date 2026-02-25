#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_aitrillion_engage_api_key'
wp option delete '_aitrillion_engage_api_password'
wp option delete '_aitrillion_engage_script_url'
wp option delete '_aitrillion_engage_created_users'
wp option delete '_aitrillion_engage_failed_sync_users'
wp option delete '_aitrillion_engage_updated_users'
wp option delete '_aitrillion_engage_deleted_users'
wp option delete '_aitrillion_engage_script_version'

# Delete Transients
wp transient delete 'aitrillion_engage_clear_log_message'

# Clear Cron Jobs
wp cron event delete 'aitrillion_engage_data_sync_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modified_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_engage_user_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_engage_user_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_engage_user_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_engage_user_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_engage_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_engage_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_engage_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_engage_sync_date'"
