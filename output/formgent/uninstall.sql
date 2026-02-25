-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formgent_ai_created_form', '_formgent_zohocrm_settings', 'formgent_lock_queue', 'formgent_lock_spreadsheet_header_process', 'formgent_activation_redirect', 'formgent_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_formgent_type', '_response_table_names', 'formgent_form_fields_labels', '_formgent_fields', '_formgent_settings', '_formgent_form_settings', '_formgent_page_break_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_formgent_type', '_response_table_names', 'formgent_form_fields_labels', '_formgent_fields', '_formgent_settings', '_formgent_form_settings', '_formgent_page_break_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_formgent_type', '_response_table_names', 'formgent_form_fields_labels', '_formgent_fields', '_formgent_settings', '_formgent_form_settings', '_formgent_page_break_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_formgent_type', '_response_table_names', 'formgent_form_fields_labels', '_formgent_fields', '_formgent_settings', '_formgent_form_settings', '_formgent_page_break_settings');

