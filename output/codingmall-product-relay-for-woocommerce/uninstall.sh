#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooapisync_db_version'
wp option delete 'wooapisync_jobs'
wp option delete 'wooapisync_logs'

# Clear Cron Jobs
wp cron event delete 'wooapisync_process_queue_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooapisync_disable_auto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooapisync_disable_auto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooapisync_disable_auto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooapisync_disable_auto'"
