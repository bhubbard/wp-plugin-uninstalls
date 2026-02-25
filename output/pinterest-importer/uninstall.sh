#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_pinterest-importer-db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinterest-image-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinterest-image-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinterest-image-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinterest-image-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinterest-pin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinterest-pin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinterest-pin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinterest-pin_id'"
