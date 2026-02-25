#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdm_wpma_settings'
wp option delete 'wdm_wpma_version'

# Clear Cron Jobs
wp cron event delete 'wp_mail_queue_hook'

