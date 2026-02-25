-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagerr_dismissed_notice', 'imagerr_auto_generate_on_upload', 'imagerr_meta_bulk_completed_state', 'imagerr_api_key', 'imagerr_generate_title', 'imagerr_generate_caption', 'imagerr_generate_description', 'imagerr_generation_language', 'imagerr_meta_prefix', 'imagerr_meta_suffix', 'imagerr_enable_debug_logs');
DELETE FROM wp_options WHERE option_name LIKE '%_completed_state';
DELETE FROM wp_options WHERE option_name LIKE 'imagerr_bulk_select_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_imagerr_uploaded', '_imagerr_error', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_imagerr_uploaded', '_imagerr_error', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_imagerr_uploaded', '_imagerr_error', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_imagerr_uploaded', '_imagerr_error', '_wp_attachment_image_alt', '_elementor_data');

