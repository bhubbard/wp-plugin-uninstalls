#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsrp_reports_days'
wp option delete 'fsrp_reports_schedule'
wp option delete 'fsrp_reports_admin_email'

# Delete Transients
wp transient delete 'fsrp_activation_error'
wp transient delete 'fsrp_reports_settings_saved'

# Clear Cron Jobs
wp cron event delete 'fsrp_submission_report'

