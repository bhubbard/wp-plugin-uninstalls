#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'galleriapress'
wp option delete 'galleriapress_default_gallery'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_common'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_common'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_common'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_common'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_picasa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_picasa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_picasa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_picasa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_wp_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_wp_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_wp_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_wp_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleriapress_link_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleriapress_link_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleriapress_link_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleriapress_link_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_gallery_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_gallery_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_gallery_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_gallery_profile'"
