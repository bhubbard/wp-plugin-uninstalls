#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linear_settings'
wp option delete 'rewrite_rules'
wp option delete 'trp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_linear_dismiss_%' OR option_name LIKE '_site_transient_linear_dismiss_%'"
wp transient delete 'linear_dismiss_old_plugin_version'
wp transient delete 'linear_dismiss_missing_data'
wp transient delete 'linear_flush_rewrite_rules_needed'

# Clear Cron Jobs
wp cron event delete 'linear_refresh_listings_cron'

