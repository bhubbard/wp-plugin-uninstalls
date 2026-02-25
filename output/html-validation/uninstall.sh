#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'html_validation_completed_scan'
wp option delete 'html_validation_cron_frequency'
wp option delete 'html_validation_error_types'
wp option delete 'html_validation_version'
wp option delete 'html_validation_terms'
wp option delete 'html_validation_posttypes'
wp option delete 'html_validation_scan_themes'
wp option delete 'html_validation_errors_per_page'
wp option delete 'html_validation_external_sources'

# Clear Cron Jobs
wp cron event delete 'html_validation_initial_scan_cron_hook'
wp cron event delete 'html_validation_auto_scan_cron_hook'
wp cron event delete 'html_validation_inital_scan_cron_hook'

