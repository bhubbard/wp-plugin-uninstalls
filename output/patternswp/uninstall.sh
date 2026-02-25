#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'patternswp_hide_theme_patterns'
wp option delete 'patternswp_hide_uncategorized_patterns'
wp option delete 'patternswp_hide_core_patterns'
wp option delete 'patternswp_plugin_license_data'
wp option delete 'patternswp_license_key'

# Delete Transients
wp transient delete 'patternswp_category_type'
wp transient delete 'patternswp_cache_cleared'
wp transient delete 'patternswp_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'patternswp_hourly_transient_load'

