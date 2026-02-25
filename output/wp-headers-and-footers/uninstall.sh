#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpheaderandfooter_basics'
wp option delete 'wpheaderandfooter_active_time'
wp option delete 'wpheaderandfooter_review_dismiss'
wp option delete 'wpheaderandfooter_basics_logger'
wp option delete 'wpheaderandfooter_settings'
wp option delete 'wpb_sdk_wp-headers-and-footers'
wp option delete '_wpheaderandfooter_optin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%'"
wp option delete 'login_customizer_options'
wp option delete 'login_customizer_settings'
wp option delete 'wpb_sdk_module_id'
wp option delete 'wpb_sdk_module_slug'
wp option delete 'wpb_api_cache'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs

