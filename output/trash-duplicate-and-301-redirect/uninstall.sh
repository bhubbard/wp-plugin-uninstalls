#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_theme'
wp option delete 'tdrd_promo_time'
wp option delete 'tdrd_is_optin'
wp option delete 'trash_duplicates_options'
wp option delete 'tdrd_delete_data'
wp option delete 'tdr_version'
wp option delete 'admin_url'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tdrd_deletepost_%' OR option_name LIKE '_site_transient_tdrd_deletepost_%'"

