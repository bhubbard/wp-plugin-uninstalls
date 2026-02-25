#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rt_wp_nginx_helper_options'
wp option delete 'rt_wp_nginx_helper_init_check'
wp option delete 'nginx_helper_version'

# Clear Cron Jobs
wp cron event delete 'rt_wp_nginx_helper_check_log_file_size_daily'

