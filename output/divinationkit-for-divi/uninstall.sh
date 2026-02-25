#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dina_divinatiokit_installed'
wp option delete 'dina_divinatiokit_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dina_gallery_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dina_gallery_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dina_gallery_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dina_gallery_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dina_gallery_item_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dina_gallery_item_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dina_gallery_item_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dina_gallery_item_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
