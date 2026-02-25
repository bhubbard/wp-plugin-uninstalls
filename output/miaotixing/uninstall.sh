#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miaotixing_option'

# Clear Cron Jobs
wp cron event delete 'miaotixing_cron_send_event'

