#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_sdk_under-construction-maintenance-mode'
wp option delete '_ucmm_optin'
wp option delete 'ucmm_active_time'
wp option delete 'ucmm_review_dismiss'
wp option delete 'ucmm_wpbrigade_setting'
wp option delete 'ucmm_wpbrigade_customization'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%'"
wp option delete 'wpb_sdk_module_id'
wp option delete 'wpb_sdk_module_slug'
wp option delete 'wpb_api_cache'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs

