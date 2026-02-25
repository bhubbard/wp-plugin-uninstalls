#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nexa_gmap_api_key'
wp option delete 'nexa_blocks_settings'
wp option delete 'nexa_blocks'
wp option delete 'nexa_modules'
wp option delete 'nexa_apis'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nexa_block_%'"
wp option delete 'nexa_favorites'

# Delete Transients
wp transient delete 'nexa_templates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
