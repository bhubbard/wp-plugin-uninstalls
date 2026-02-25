#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sixs_posttypes_option_name'
wp option delete 'sixs_caption_1_option_name'
wp option delete 'sixs_caption_2_option_name'
wp option delete 'sixs_title_1_option_name'
wp option delete 'sixs_title_2_option_name'
wp option delete 'sixs_xml_autosave_option_name'
wp option delete 'sixs_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
