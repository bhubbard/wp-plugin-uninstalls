#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'div-width'
wp option delete 'div-color'
wp option delete 'image-bg-color'
wp option delete 'image-border-color'
wp option delete 'image-border-hover-color'
wp option delete 'category-id'
wp option delete 'number-posts'
wp option delete 'numberposts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
