#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_email_logger_cleanup_by_amount'
wp option delete 'lana_email_logger_cleanup_amount'
wp option delete 'lana_email_logger_cleanup_by_time'
wp option delete 'lana_email_logger_cleanup_time'

# Clear Cron Jobs
wp cron event delete 'lana_email_logger_cleanup_by_amount'
wp cron event delete 'lana_email_logger_cleanup_by_time'

