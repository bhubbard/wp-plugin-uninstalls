-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mf7_list_options', 'mailjet_form_7_custom_1_label', 'mailjet_form_7_custom_1_field', 'mailjet_form_7_custom_2_label', 'mailjet_form_7_custom_2_field', 'mailjet_form_7_custom_3_label', 'mailjet_form_7_custom_3_field', 'mailjet_form_7_custom_4_label', 'mailjet_form_7_custom_4_field', 'mailjet_form_7_custom_5_label', 'mailjet_form_7_custom_5_field', 'mailjet_form_7_email_field', 'mailjet_form_7_name_field', 'mailjet_form_7_checkbox_field', 'mailjet_form_7_mailjet_list_id', 'mailjet_form_7_checkbox_disable', 'mailjet_apikey', 'mailjet_apisecret', 'mailjet_username', 'mailjet_password');

