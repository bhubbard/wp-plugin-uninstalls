#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disallowed_keys'
wp option delete 'wp_extra'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
