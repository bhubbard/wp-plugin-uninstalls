#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'images_to_webp_settings'
wp option delete 'active_images_to_webp'
wp option delete 'images_to_webp_methods'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avif_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avif_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avif_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avif_notice_dismissed'"
