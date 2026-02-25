#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpcac_api_key'
wp option delete 'wpcac_serviceapi_key'
wp option delete 'WPCAC_plugin_version'
wp option delete 'hmbkp_path'
wp option delete 'hmbkp_default_path'
wp option delete 'hmbkp_plugin_version'
wp option delete 'wpcac_backup_path'
wp option delete 'wpcac_no_htaccess'
wp option delete 'dismissed-plugins'
wp option delete 'update_plugins'
wp option delete 'current_theme'
wp option delete 'update_themes'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
