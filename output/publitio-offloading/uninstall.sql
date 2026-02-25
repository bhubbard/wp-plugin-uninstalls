-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('publitio_offloading_show_notice', 'publitio_offloading_allow_download', 'publitio_offloading_offload_templates', 'publitio_offloading_image_checkbox', 'publitio_offloading_video_checkbox', 'publitio_offloading_audio_checkbox', 'publitio_offloading_document_checkbox', 'publitio_offloading_default_folder', 'publitio_offloading_default_cname', 'publitio_offloading_image_quality', 'publitio_offloading_video_quality', 'publitio_offloading_delete_checkbox', 'publitio_offloading_replace_checkbox', 'publitio_offloading_key', 'publitio_offloading_secret');
DELETE FROM wp_options WHERE option_name LIKE 'publitio_offloading_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('publitioMeta', '_wp_attachment_context');
DELETE FROM wp_usermeta WHERE meta_key IN ('publitioMeta', '_wp_attachment_context');
DELETE FROM wp_termmeta WHERE meta_key IN ('publitioMeta', '_wp_attachment_context');
DELETE FROM wp_commentmeta WHERE meta_key IN ('publitioMeta', '_wp_attachment_context');

