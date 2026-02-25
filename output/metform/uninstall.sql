-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mf_dropbox_access_token', 'wf_google_access_token', 'metform_last_entry_serial_no', 'mf_hubspot_saved_forms', 'mf_helpscout_access_token', 'mf_helpscout_mailboxes', 'metform_option__settings', 'metform_install_date', 'rewrite_rules', 'metform_version', 'metform_feature_usage', '__mf_package_info__', '__mf_payment_id__', 'mf_aweber_token_transient', 'mf_dropbox_token', 'mf_google_sheet_token', 'mf_hubsopt_token_transient');
DELETE FROM wp_options WHERE option_name LIKE 'wpmet_get_response_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpmet_get_mailchimp_list_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_hubspot_form_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_aweber_form_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_hubspot_form_guid_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_hubspot_form_portalId_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_mailster_form_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_auth_reg_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_auth_login_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_post_submission_custom_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'mf_post_submission_%';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE 'metform-edit_with_emailkit_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';
DELETE FROM wp_options WHERE option_name LIKE 'transient_mf_form_data_entry_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'transient_mf_token_hash_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metform_entries__form_data', 'metform_entries__payment_status', 'metform_entries__payment_trans', 'mf_page_id', 'metform_entries_serial_no', 'mf_redirect_params_status', 'metform_entries__user_id', '_elementor_data', 'mf_redirect_params', 'metform_entries__file_upload_new', 'metform_entries__form_id', 'email_verified', 'metform_entries__payment_invoice', 'mf_woo_order_id', 'metform_form__entry_browser_data', 'metform_entries__file_upload', '_wp_page_template', 'mf_zoho_fields', '_elementor_edit_mode', '_metform_cloned_id', 'emailkit_template_type', '_wp_attachment_image_alt', 'metform_form__form_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('metform_entries__form_data', 'metform_entries__payment_status', 'metform_entries__payment_trans', 'mf_page_id', 'metform_entries_serial_no', 'mf_redirect_params_status', 'metform_entries__user_id', '_elementor_data', 'mf_redirect_params', 'metform_entries__file_upload_new', 'metform_entries__form_id', 'email_verified', 'metform_entries__payment_invoice', 'mf_woo_order_id', 'metform_form__entry_browser_data', 'metform_entries__file_upload', '_wp_page_template', 'mf_zoho_fields', '_elementor_edit_mode', '_metform_cloned_id', 'emailkit_template_type', '_wp_attachment_image_alt', 'metform_form__form_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('metform_entries__form_data', 'metform_entries__payment_status', 'metform_entries__payment_trans', 'mf_page_id', 'metform_entries_serial_no', 'mf_redirect_params_status', 'metform_entries__user_id', '_elementor_data', 'mf_redirect_params', 'metform_entries__file_upload_new', 'metform_entries__form_id', 'email_verified', 'metform_entries__payment_invoice', 'mf_woo_order_id', 'metform_form__entry_browser_data', 'metform_entries__file_upload', '_wp_page_template', 'mf_zoho_fields', '_elementor_edit_mode', '_metform_cloned_id', 'emailkit_template_type', '_wp_attachment_image_alt', 'metform_form__form_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metform_entries__form_data', 'metform_entries__payment_status', 'metform_entries__payment_trans', 'mf_page_id', 'metform_entries_serial_no', 'mf_redirect_params_status', 'metform_entries__user_id', '_elementor_data', 'mf_redirect_params', 'metform_entries__file_upload_new', 'metform_entries__form_id', 'email_verified', 'metform_entries__payment_invoice', 'mf_woo_order_id', 'metform_form__entry_browser_data', 'metform_entries__file_upload', '_wp_page_template', 'mf_zoho_fields', '_elementor_edit_mode', '_metform_cloned_id', 'emailkit_template_type', '_wp_attachment_image_alt', 'metform_form__form_setting');

