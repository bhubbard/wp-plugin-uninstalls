#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_guest_order_tracking_version'
wp option delete 'alg_wc_guest_order_tracking_plugin_enabled'
wp option delete 'alg_gotwc_track_page_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

