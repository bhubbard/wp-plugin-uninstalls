#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'milesweb_maintenance_mode_enabled'
wp option delete 'milesweb_force_https_redirect'
wp option delete 'milesweb_file_editing_disabled'
wp option delete 'milesweb_disable_xmlrpc'
wp option delete 'mw_force_footer_enabled'
wp option delete 'force_https_redirect'
wp option delete 'maintenance_mode_enabled'
wp option delete 'milesweb_logo_image_id'
wp option delete 'milesweb_coming_soon_image_id'
wp option delete 'file_editing_disabled'
wp option delete 'disable_xmlrpc'
wp option delete 'milesweb_plugin_installed'

# Delete Transients
wp transient delete 'rest_api_init'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
