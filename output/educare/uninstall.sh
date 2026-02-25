#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'educare_svr_data'
wp option delete 'educare_db_sys_tem'
wp option delete 'educare_files_selector'

# Clear Cron Jobs
wp cron event delete 'educare_svr_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'educare_renewal_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'educare_renewal_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'educare_renewal_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'educare_renewal_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'educare_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'educare_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'educare_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'educare_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'School'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'School'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'School'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'School'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
