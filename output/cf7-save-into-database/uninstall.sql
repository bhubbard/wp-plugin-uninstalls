-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'cf7nxt_view_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enq_star', 'enq_name', 'enq_status', 'enq_email', 'enq_label', 'enq_formname', 'enq_formid', '_cf7nxt_save_name_tag', '_cf7nxt_save_email_tag', '_cf7nxt_save_subject_tag', '_cf7nxt_save_file_tag', '_cf7nxt_other_save_tags', '_cf7nxt_other_labels_save_tags', 'enq_attach', 'enq_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('enq_star', 'enq_name', 'enq_status', 'enq_email', 'enq_label', 'enq_formname', 'enq_formid', '_cf7nxt_save_name_tag', '_cf7nxt_save_email_tag', '_cf7nxt_save_subject_tag', '_cf7nxt_save_file_tag', '_cf7nxt_other_save_tags', '_cf7nxt_other_labels_save_tags', 'enq_attach', 'enq_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('enq_star', 'enq_name', 'enq_status', 'enq_email', 'enq_label', 'enq_formname', 'enq_formid', '_cf7nxt_save_name_tag', '_cf7nxt_save_email_tag', '_cf7nxt_save_subject_tag', '_cf7nxt_save_file_tag', '_cf7nxt_other_save_tags', '_cf7nxt_other_labels_save_tags', 'enq_attach', 'enq_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enq_star', 'enq_name', 'enq_status', 'enq_email', 'enq_label', 'enq_formname', 'enq_formid', '_cf7nxt_save_name_tag', '_cf7nxt_save_email_tag', '_cf7nxt_save_subject_tag', '_cf7nxt_save_file_tag', '_cf7nxt_other_save_tags', '_cf7nxt_other_labels_save_tags', 'enq_attach', 'enq_data');

