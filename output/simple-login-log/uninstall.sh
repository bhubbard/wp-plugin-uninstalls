#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sll_db_ver'
wp option delete 'users_page_login_log_per_page'
wp option delete 'simple_login_log'

# Clear Cron Jobs
wp cron event delete 'truncate_sll'
wp cron event delete 'truncate_log'
wp cron event delete 'SimpleLoginLog::truncate_log'

