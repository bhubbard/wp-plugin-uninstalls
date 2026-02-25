#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfs_options'
wp option delete 'sfs_alert'
wp option delete 'sfs_version'

# Delete Transients
wp transient delete 'feed_count'
wp transient delete 'rss2_count'
wp transient delete 'comment_count'
wp transient delete 'all_count'
wp transient delete 'comments_count'
wp transient delete '_transient_all_count'
wp transient delete '_transient_feed_count'
wp transient delete '_transient_rss2_count'
wp transient delete '_transient_comments_count'
wp transient delete '_transient_timeout_all_count'
wp transient delete '_transient_timeout_feed_count'
wp transient delete '_transient_timeout_rss2_count'
wp transient delete '_transient_timeout_comment_count'

# Clear Cron Jobs
wp cron event delete 'sfs_create_transients'

