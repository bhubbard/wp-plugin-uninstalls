-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qbank_host', 'qbank_base_href', 'qbank_client_id', 'qbank_username', 'qbank_password', 'qbank_deployment_site_id', 'qbank_session_source_id', 'qbank_disable_file_uploads', 'qbank_download_file', 'qbank_remote_prefix', 'qbank_default_image_size', 'qbank_default_image_extension', 'qbank_alt_name', 'qbank_caption_name', 'qbank_description_name', 'qbank_additional_meta_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qbnk_media_id', '_qbnk_remote_file', '_wp_attached_file', '_wp_attachment_image_alt', '_qbnk_category_id', '_qbnk_o_size', '_qbnk_o_file_extension', '_qbnk_o_mime_type', '_qbnk_o_crop', '_qbnk_o_resize', '_qbnk_attachment_id_log', '_qbnk_usage_id_log', '_qbnk_usage_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qbnk_media_id', '_qbnk_remote_file', '_wp_attached_file', '_wp_attachment_image_alt', '_qbnk_category_id', '_qbnk_o_size', '_qbnk_o_file_extension', '_qbnk_o_mime_type', '_qbnk_o_crop', '_qbnk_o_resize', '_qbnk_attachment_id_log', '_qbnk_usage_id_log', '_qbnk_usage_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qbnk_media_id', '_qbnk_remote_file', '_wp_attached_file', '_wp_attachment_image_alt', '_qbnk_category_id', '_qbnk_o_size', '_qbnk_o_file_extension', '_qbnk_o_mime_type', '_qbnk_o_crop', '_qbnk_o_resize', '_qbnk_attachment_id_log', '_qbnk_usage_id_log', '_qbnk_usage_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qbnk_media_id', '_qbnk_remote_file', '_wp_attached_file', '_wp_attachment_image_alt', '_qbnk_category_id', '_qbnk_o_size', '_qbnk_o_file_extension', '_qbnk_o_mime_type', '_qbnk_o_crop', '_qbnk_o_resize', '_qbnk_attachment_id_log', '_qbnk_usage_id_log', '_qbnk_usage_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qbnk_p_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qbnk_p_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qbnk_p_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qbnk_p_%';

