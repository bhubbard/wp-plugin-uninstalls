#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_trackID-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_pubDateID-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtwh_soundcloud_title-%'"
wp option delete 'widget_wtwh_soundcloud_widget'

# Clear Cron Jobs
wp cron event delete 'wtwh_soundcloud_cron_job_setup_to_pull_rss_feed'

