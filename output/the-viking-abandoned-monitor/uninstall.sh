#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tvapm_email'
wp option delete 'tvapm_settings'
wp option delete 'tvapm_site_id'
wp option delete 'tvapm_14_days_trial_applied'
wp option delete 'tvapm_entitlements'
wp option delete 'tvapm_is_trial'
wp option delete 'tvapm_is_paid'
wp option delete 'tvapm_trial_end'

# Clear Cron Jobs
wp cron event delete 'tvapm_weekly_email'
wp cron event delete 'tvapm_viking_heartbeat'

