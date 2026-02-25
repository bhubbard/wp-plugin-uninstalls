#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a3rw_ip_change_mail_sent'
wp option delete 'a3rw_check_ip_cron'
wp option delete 'a3rw_server_ip'

# Clear Cron Jobs
wp cron event delete 'a3rw_check_ip'

