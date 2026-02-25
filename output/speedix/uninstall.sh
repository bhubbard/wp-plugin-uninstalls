#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speedix_settings'
wp option delete 'speedix_setup_complete'
wp option delete 'speedix_reflection_cache'
wp option delete 'speedix_php_runtime'
wp option delete 'speedix_db_version'
wp option delete 'speedix_settings_version'
wp option delete 'rewrite_rules'
wp option delete 'speedix_site_health_scan'

# Delete Transients
wp transient delete 'speedix_memory_warning'
wp transient delete 'speedix_overload'
wp transient delete 'speedix_redirect_to_setup'
wp transient delete 'speedix_calibrate_token'
wp transient delete 'speedix_calibration_data'
wp transient delete 'speedix_wizard_preset'
wp transient delete 'speedix_calibration'

# Clear Cron Jobs
wp cron event delete 'speedix_cleanup'
wp cron event delete 'speedix_site_health_scan'
wp cron event delete 'speedix_site_health_email'

