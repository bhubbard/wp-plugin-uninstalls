#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultk_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ultk_%'"
wp option delete 'ultk_track_user_roles'
wp option delete 'ultk_history_retention_days'
wp option delete 'ultk_track_admin_logins'
wp option delete 'ultk_enable_dashboard_widget'
wp option delete 'ultk_inactive_user_threshold'
wp option delete 'ultk_date_format'
wp option delete 'ultk_time_format'

# Delete Transients
wp transient delete 'ultk_migration_notice'

# Clear Cron Jobs
wp cron event delete 'ultk_cleanup_old_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultk_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultk_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultk_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultk_last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultk_login_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultk_login_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultk_login_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultk_login_count'"
