#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image-counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image-counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image-counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image-counter'"
