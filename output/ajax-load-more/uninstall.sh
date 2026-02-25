#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alm_drop_pluginVersion'
wp option delete 'alm_version'
wp option delete 'alm_settings'
wp option delete '_alm_settings'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'update_plugins'

