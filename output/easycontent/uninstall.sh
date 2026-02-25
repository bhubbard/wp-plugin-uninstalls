#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ec-current-db-version'
wp option delete 'ec-is-plugin-connected'
wp option delete 'ec-public-api-key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ec-source-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ec-source-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ec-source-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ec-source-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
