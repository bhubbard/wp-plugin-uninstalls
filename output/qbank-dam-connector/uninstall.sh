#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qbank_host'
wp option delete 'qbank_base_href'
wp option delete 'qbank_client_id'
wp option delete 'qbank_username'
wp option delete 'qbank_password'
wp option delete 'qbank_deployment_site_id'
wp option delete 'qbank_session_source_id'
wp option delete 'qbank_disable_file_uploads'
wp option delete 'qbank_download_file'
wp option delete 'qbank_remote_prefix'
wp option delete 'qbank_default_image_size'
wp option delete 'qbank_default_image_extension'
wp option delete 'qbank_alt_name'
wp option delete 'qbank_caption_name'
wp option delete 'qbank_description_name'
wp option delete 'qbank_additional_meta_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_media_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_media_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_media_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_media_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_remote_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_remote_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_remote_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_remote_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_o_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_o_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_o_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_o_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_o_file_extension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_o_file_extension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_o_file_extension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_o_file_extension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_o_mime_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_o_mime_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_o_mime_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_o_mime_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_o_crop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_o_crop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_o_crop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_o_crop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_o_resize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_o_resize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_o_resize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_o_resize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_qbnk_p_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_qbnk_p_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_qbnk_p_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qbnk_p_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_attachment_id_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_attachment_id_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_attachment_id_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_attachment_id_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_usage_id_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_usage_id_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_usage_id_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_usage_id_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qbnk_usage_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qbnk_usage_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qbnk_usage_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qbnk_usage_id'"
