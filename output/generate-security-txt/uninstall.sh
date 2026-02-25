#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notification_delete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%securitytxt_email_date'"
wp option delete 'securitytxt_email_sent'
wp option delete 'securitytxt_archiveorg_request'
wp option delete 'securitytxt_hash'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%expires'"
wp option delete 'securitytxt_logs'

# Clear Cron Jobs
wp cron event delete 'check_securitytxt_expiration_event'
wp cron event delete 'securitytxt_archiveorg_request_event'
wp cron event delete 'securitytxt_verify_file_contents_event'
wp cron event delete 'securitytxt_verify_file_contents'

