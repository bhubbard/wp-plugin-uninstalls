#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nginxm_global_options'
wp option delete 'nginxm_options'
wp option delete 'nginxm_init_check'

# Clear Cron Jobs
wp cron event delete 'nm_check_log_file_size_daily'

