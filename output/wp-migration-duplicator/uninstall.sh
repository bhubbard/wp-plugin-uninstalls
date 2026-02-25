#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_mgdp_admin_modules'
wp option delete 'wt_mgdp_cron_settings'
wp option delete 'wp_mgdp_log_id'
wp option delete 'wt_mgdp_cadvanced_settings'
wp option delete 'wt_mgdp_advanced_import_settings'
wp option delete 'wt_mgdp_options'

# Clear Cron Jobs

