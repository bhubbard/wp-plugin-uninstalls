#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'dm_admin_cron_notice_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pfd_onboarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pfd_onboarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pfd_onboarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pfd_onboarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dm_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dm_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dm_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dm_dismissed'"
