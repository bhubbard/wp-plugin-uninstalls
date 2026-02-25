#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linktrade_notification_email'
wp option delete 'linktrade_email_notifications'
wp option delete 'linktrade_reminder_days'
wp option delete 'linktrade_language'
wp option delete 'linktrade_version'
wp option delete 'linktrade_install_date'
wp option delete 'linktrade_batch_size'
wp option delete 'linktrade_request_delay'

# Clear Cron Jobs
wp cron event delete 'linktrade_check_links'
wp cron event delete 'linktrade_check_reminders'

