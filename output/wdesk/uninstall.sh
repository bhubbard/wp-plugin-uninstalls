#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdesk_name'
wp option delete 'wdesk_sender'
wp option delete 'wdesk_url'
wp option delete 'wdesk_date_format'
wp option delete 'wdesk_max_subject'
wp option delete 'wdesk_max_thread'

# Clear Cron Jobs
wp cron event delete 'wdesk_cron_hook'

