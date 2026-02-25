#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'panoramic_image_block_settings'

# Delete Transients
wp transient delete 'panoramic_image_block_version_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panoramic_image_block_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panoramic_image_block_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panoramic_image_block_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panoramic_image_block_preferences'"
