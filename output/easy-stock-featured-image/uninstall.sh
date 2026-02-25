#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esfi_active'
wp option delete 'esfi_source_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'esfi_%'"
wp option delete 'esfi_width'
wp option delete 'esfi_height'
wp option delete 'esfi_featured'
wp option delete 'esfi_keywords'
wp option delete 'esfi_image_source'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
