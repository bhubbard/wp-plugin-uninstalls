#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpapps_draft_notifier_frequency'
wp option delete 'wpapps_draft_notifier_email_option'
wp option delete 'wpapps_draft_notifier_email_cc'
wp option delete 'wpapps_draft_notifier_email_template'
wp option delete 'wpapps_draft_notifier_remove_cron'

# Clear Cron Jobs
wp cron event delete 'wpapps_draft_notifier_cron_hook'
wp cron event delete 'wpapps_draft_notifier_event'

