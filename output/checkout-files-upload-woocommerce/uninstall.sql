-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_checkout_files_upload_version', 'wpw_cfu_settings', 'alg_checkout_files_upload_form_template_field_ajax', 'alg_wc_checkout_files_upload_enabled', 'alg_checkout_files_upload_emails_actions', 'alg_checkout_files_upload_emails_address', 'alg_checkout_files_upload_emails_subject', 'alg_checkout_files_upload_emails_heading', 'alg_checkout_files_upload_emails_content', 'alg_checkout_files_upload_emails_do_attach_on_upload', 'alg_checkout_files_upload_emails_action_removed', 'alg_checkout_files_upload_emails_action_uploaded', 'alg_checkout_files_upload_use_ajax_alert_success_remove', 'wpw_cfu_form_template_uploaded_file', 'alg_checkout_files_upload_use_ajax_alert_success_upload', 'alg_checkout_files_upload_max_file_size_mb', 'alg_checkout_files_upload_max_file_size_exceeded_message', 'alg_checkout_files_upload_use_ajax_progress_bar', 'alg_checkout_files_upload_attach_to_admin_new_order', 'alg_checkout_files_upload_attach_to_customer_processing_order', 'woocommerce_version', 'woocommerce_checkout_page_id', 'alg_checkout_files_upload_form_template_label', 'alg_checkout_files_upload_form_image_style', 'alg_checkout_files_upload_form_template_before', 'alg_checkout_files_upload_form_style_ajax_delete', 'alg_checkout_files_upload_form_template_after');
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_hook_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_hook_priority_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_add_to_thankyou_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_add_to_myaccount_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_enabled_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_success_remove_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_success_upload_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_accept_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_wrong_file_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_w_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_file_validate_image_dimensions_h_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_wrong_image_dimensions_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_no_image_dimensions_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_required_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_notice_required_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_products_in_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_cats_in_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_show_tags_in_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_label_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_checkout_files_upload_label_button_single_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_checkout_files_total_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_checkout_files_total_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_checkout_files_total_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_checkout_files_total_files');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_files_upload_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_files_upload_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_files_upload_real_name_%';

