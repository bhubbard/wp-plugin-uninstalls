#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'luvre_settings'

# Delete Transients
wp transient delete 'luvre_plugin_activated'
wp transient delete 'luvre_plugin_activated_nonce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
