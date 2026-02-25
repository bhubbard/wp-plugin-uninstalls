-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_KLCF_key', '_KLCF_lists', '_KLCF_form_send_status', '_KLCF_selected_list', '_KLCF_regular_fields_mappings', '_KLCF_gdpr_status', '_KLCF_gdpr_message', '_KLCF_form_custom_source', '_KLCF_form_logging_status', '_KLCF_form_input_mask_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_KLCF_key', '_KLCF_lists', '_KLCF_form_send_status', '_KLCF_selected_list', '_KLCF_regular_fields_mappings', '_KLCF_gdpr_status', '_KLCF_gdpr_message', '_KLCF_form_custom_source', '_KLCF_form_logging_status', '_KLCF_form_input_mask_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_KLCF_key', '_KLCF_lists', '_KLCF_form_send_status', '_KLCF_selected_list', '_KLCF_regular_fields_mappings', '_KLCF_gdpr_status', '_KLCF_gdpr_message', '_KLCF_form_custom_source', '_KLCF_form_logging_status', '_KLCF_form_input_mask_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_KLCF_key', '_KLCF_lists', '_KLCF_form_send_status', '_KLCF_selected_list', '_KLCF_regular_fields_mappings', '_KLCF_gdpr_status', '_KLCF_gdpr_message', '_KLCF_form_custom_source', '_KLCF_form_logging_status', '_KLCF_form_input_mask_status');

