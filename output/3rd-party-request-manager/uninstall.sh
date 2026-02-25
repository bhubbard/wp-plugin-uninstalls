#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsc3ppm_notify_frequency'
wp option delete 'nsc3ppm_new_hostnames'
wp option delete 'nsc3ppm_notify_email'
wp option delete 'nsc3ppm_notified_hostnames'
wp option delete 'nsc3ppm_data_retention'
wp option delete 'nsc3ppm_monitoring_enabled'
wp option delete 'nsc3ppm_enable_csp_rules'
wp option delete 'nsc3ppm_sample_percentage'
wp option delete 'nsc3ppm_allowed_hostnames'

# Clear Cron Jobs
wp cron event delete 'nsc3ppm_daily_cleanup'
wp cron event delete 'nsc3ppm_daily_domain_notification'

