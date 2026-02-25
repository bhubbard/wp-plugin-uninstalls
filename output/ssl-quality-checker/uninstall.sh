#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssl_quality_checker_settings'
wp option delete 'ssl_labs_inform_user'

# Clear Cron Jobs
wp cron event delete 'cron_check_ssl_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_ssl_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_ssl_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_ssl_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_ssl_notice'"
