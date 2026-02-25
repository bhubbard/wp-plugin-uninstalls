#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lsq_notifications_enabled'
wp option delete 'lsq_threshold'
wp option delete 'lsq_notify_email'
wp option delete 'lsq_send_immediately'
wp option delete 'lsq_send_by_cron'
wp option delete 'lsq_cron_time'
wp option delete 'lsq_cron_frequency'
wp option delete 'dits-lost-search-query_general'

# Clear Cron Jobs
wp cron event delete 'dits_lsq_send_notifications'

