#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booter_settings'
wp option delete 'booter_version'
wp option delete 'wpseo_xml'
wp option delete 'wpseo'
wp option delete 'aioseop_options'

# Delete Transients
wp transient delete 'booter_disavow_list_downloaded_at'
wp transient delete 'booter_bad_referers'
wp transient delete 'booter_bad_robots'
wp transient delete 'booter_bad_referers_updated_at'
wp transient delete 'booter_bad_robots_updated_at'
wp transient delete 'upress_enable'

# Clear Cron Jobs
wp cron event delete 'booter_404_log_cleanup'
wp cron event delete 'booter_404_log_daily_report'
wp cron event delete 'booter_404_log_report'
wp cron event delete 'booter_write_robots_file'

