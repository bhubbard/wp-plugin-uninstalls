-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcf_show_in_dnd_file_uploader_in', 'wcf_show_in_dnd_file_upload_after', 'wcf_drag_n_drop_error_failed_to_upload', 'wcf_drag_n_drop_support_file_upload', 'wcf_drag_n_drop_error_invalid_file', 'wcf_drag_n_drop_error_files_too_large', 'wcf_drag_n_drop_disable', 'wcf_drag_n_drop_field_name', 'wcf_drag_n_drop_file_size_limit', 'wcf_drag_n_drop_max_file_upload', 'wcf_drag_n_drop_min_file_upload', 'wcf_drag_n_drop_default_label', 'wcf_drag_n_drop_required', 'wcf_drag_n_drop_error_min_file', 'show_in_dnd_file_uploader_in', 'show_in_dnd_file_upload_after');
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_text%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_separator%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_browse_text%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_server_limit%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_files_too_large%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_invalid_file%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_min_file%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_max_number_of_files%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_error_max_file%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_of_text%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_deleting_text%';
DELETE FROM wp_options WHERE option_name LIKE 'wcf_drag_n_drop_remove_text%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('label_dnd_file_upload_wc', 'enable_dnd_file_upload_wc', 'disable_dnd_file_upload_wc');
DELETE FROM wp_usermeta WHERE meta_key IN ('label_dnd_file_upload_wc', 'enable_dnd_file_upload_wc', 'disable_dnd_file_upload_wc');
DELETE FROM wp_termmeta WHERE meta_key IN ('label_dnd_file_upload_wc', 'enable_dnd_file_upload_wc', 'disable_dnd_file_upload_wc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('label_dnd_file_upload_wc', 'enable_dnd_file_upload_wc', 'disable_dnd_file_upload_wc');

