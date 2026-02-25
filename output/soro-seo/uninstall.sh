#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'soro_post_author'
wp option delete 'soro_post_category'
wp option delete 'soro_indexnow_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_soro_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_soro_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_soro_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_soro_featured_image'"
