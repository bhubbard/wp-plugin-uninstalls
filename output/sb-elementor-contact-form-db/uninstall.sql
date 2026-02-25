-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdbgp_google_settings', 'cfef_usage_share_data', 'fme-installDate', 'cfef-installDate', 'cfefp-installDate', 'ccfef-installDate', 'formsdb-installDate', 'oldest_plugin', 'sb-elementor-install-by', 'formsdb_initial_version', 'fdbgp-install-date', 'fdbgp_marketing_dismissed', 'fdbgp_tec_notice_dismissed', 'cfkef_enabled_elements', 'cpfm_opt_in_choice_cool_forms', 'fdbgp_google_access_token', 'fdbgp_legacy_save_enabled', 'formdb_initial_version_migration', 'fdbgp-v', 'fdbgp-type', 'fdbgp-installDate', 'fdbgp_forms_posttype_data', 'fdbgp_forms_sheet_data');
DELETE FROM wp_options WHERE option_name LIKE '%-install-by';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_cfkef_form_data', '_cfkef_form_meta', '_cfkef_form_entry_id', '_cfkef_form_name', '_cfkef_element_id', '_cfkef_user_email', '_cfkef_form_post_id', '_elementor_data', 'sb_elem_cfd_form_id', 'sb_elem_cfd', 'sb_elem_cfd_submitted_on_id', 'sb_elem_cfd_read', '_cfkef_form_action_count', '_cfkef_entry_view_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_cfkef_form_data', '_cfkef_form_meta', '_cfkef_form_entry_id', '_cfkef_form_name', '_cfkef_element_id', '_cfkef_user_email', '_cfkef_form_post_id', '_elementor_data', 'sb_elem_cfd_form_id', 'sb_elem_cfd', 'sb_elem_cfd_submitted_on_id', 'sb_elem_cfd_read', '_cfkef_form_action_count', '_cfkef_entry_view_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_cfkef_form_data', '_cfkef_form_meta', '_cfkef_form_entry_id', '_cfkef_form_name', '_cfkef_element_id', '_cfkef_user_email', '_cfkef_form_post_id', '_elementor_data', 'sb_elem_cfd_form_id', 'sb_elem_cfd', 'sb_elem_cfd_submitted_on_id', 'sb_elem_cfd_read', '_cfkef_form_action_count', '_cfkef_entry_view_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_cfkef_form_data', '_cfkef_form_meta', '_cfkef_form_entry_id', '_cfkef_form_name', '_cfkef_element_id', '_cfkef_user_email', '_cfkef_form_post_id', '_elementor_data', 'sb_elem_cfd_form_id', 'sb_elem_cfd', 'sb_elem_cfd_submitted_on_id', 'sb_elem_cfd_read', '_cfkef_form_action_count', '_cfkef_entry_view_status');

