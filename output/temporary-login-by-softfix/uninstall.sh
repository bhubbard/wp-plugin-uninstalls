#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'soft_fix_login_logs'

# Clear Cron Jobs
wp cron event delete 'soft_fix_cleanup_temp_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soft_fix_meta_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soft_fix_meta_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soft_fix_meta_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soft_fix_meta_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soft_fix_temp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soft_fix_temp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soft_fix_temp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soft_fix_temp_user'"
