#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publitio_offloading_show_notice'
wp option delete 'publitio_offloading_allow_download'
wp option delete 'publitio_offloading_offload_templates'
wp option delete 'publitio_offloading_image_checkbox'
wp option delete 'publitio_offloading_video_checkbox'
wp option delete 'publitio_offloading_audio_checkbox'
wp option delete 'publitio_offloading_document_checkbox'
wp option delete 'publitio_offloading_default_folder'
wp option delete 'publitio_offloading_default_cname'
wp option delete 'publitio_offloading_image_quality'
wp option delete 'publitio_offloading_video_quality'
wp option delete 'publitio_offloading_delete_checkbox'
wp option delete 'publitio_offloading_replace_checkbox'
wp option delete 'publitio_offloading_key'
wp option delete 'publitio_offloading_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'publitio_offloading_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'publitioMeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'publitioMeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'publitioMeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'publitioMeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
