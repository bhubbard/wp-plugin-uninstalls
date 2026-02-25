#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailniaga_balance'
wp option delete 'mailniaga_wp_connector_settings'

# Delete Transients
wp transient delete 'mailniaga_test_email_result'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'mailniaga_check_balance_hook'
wp cron event delete 'mailniaga_clean_email_logs'
wp cron event delete 'mailniaga_unsubscribe_cron'

