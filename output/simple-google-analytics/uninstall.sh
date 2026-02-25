#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sga_analytics_id'
wp option delete 'sga_code_location'
wp option delete 'sga_demographic_and_interest'
wp option delete 'sga_render_when_loggedin'
wp option delete 'factory_plugin_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"

# Delete Transients
wp transient delete 'wbcr_factory_google_fonts'
wp transient delete 'wbcr_factory_google_fonts_raw'

# Clear Cron Jobs
wp cron event delete 'wbcr/gac/update_analytic_library'
wp cron event delete 'wclearfy/google_tracking_cache_update'
wp cron event delete 'wbcr_clearfy_update_local_ga'

