#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '301_redirects_wildcard'
wp option delete 'simple301redirects_hide_btl_notice'
wp option delete '301_redirects'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'simple301redirects_version'

# Delete Transients
wp transient delete 'simple_301_redirects_import_info'

