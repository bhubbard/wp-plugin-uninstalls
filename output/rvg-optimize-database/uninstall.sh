#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'odb_rvg_options'
wp option delete 'odb_rvg_excluded_tabs'

# Clear Cron Jobs
wp cron event delete 'odb_scheduler'
wp cron event delete 'rvg_optimize_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keep_revisions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keep_revisions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keep_revisions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keep_revisions'"
