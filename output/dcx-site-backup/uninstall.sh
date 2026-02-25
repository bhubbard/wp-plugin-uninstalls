#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'dcxsitebackup_wp_migration_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcxsitebackup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcxsitebackup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcxsitebackup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcxsitebackup_notice_dismissed'"
