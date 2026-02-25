#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modula_importer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foogallery_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foogallery_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foogallery_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foogallery_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foogallery_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foogallery_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foogallery_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foogallery_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foogallery_custom_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-images'"
