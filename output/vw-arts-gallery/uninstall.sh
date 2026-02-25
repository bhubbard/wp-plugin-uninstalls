#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arts_gallery_flush_rewrite_rules'
wp option delete 'arts_gallery_settings'
wp option delete 'arts_gallery_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_inquiry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_inquiry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_inquiry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_inquiry_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_last_inquiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_last_inquiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_last_inquiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_last_inquiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_room_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_room_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_room_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_room_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_artwork_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_artwork_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_artwork_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_artwork_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_custom_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_custom_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_custom_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_custom_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_custom_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_custom_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_custom_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_custom_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ag_artwork_scale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ag_artwork_scale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ag_artwork_scale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ag_artwork_scale'"
