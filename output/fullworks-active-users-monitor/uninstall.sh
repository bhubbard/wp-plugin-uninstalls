#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fwaum_settings'
wp option delete 'fwaum_audit_migration_done'
wp option delete 'fwaum_network_settings'

# Delete Transients
wp transient delete 'fwaum_online_users_cache'

# Clear Cron Jobs
wp cron event delete 'fwaum_cleanup_audit_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fwaum_session_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fwaum_session_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fwaum_session_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fwaum_session_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fwaum_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fwaum_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fwaum_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fwaum_last_login'"
