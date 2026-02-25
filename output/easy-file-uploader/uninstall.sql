-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_dragdrop_button_label', 'easy_dragdrop_file_types_allowed', 'easy_dragdrop_max_file_size', 'easy_dragdrop_file_type_error', 'easy_dragdrop_file_size_error', 'easy_dragdrop_max_files');

