-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calculation_forms_settings', 'calculation_forms_settings_analytics_code', 'calculation_forms_settings_analytics', 'calculation_forms_settings_mailchimp', '_calculation_forms_mailchimp_lists', 'ninja_forms_addons_feed', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_calculation_form_coupon', '_calculation_form_mails', '_calculation_forms_multistep_style', '_calculation_form', '_calculation_form_messages', '_calculation_form_paypal', '_payment', '_form_id', '_form_id_mail_attachments', '_payment_total', '_payment_currency_code', '_calculation_forms_mailchimp', '_calculation_forms_mailchimp_merge_fields', '_calculation_forms_pdf', '_calculation_forms_zapier');
DELETE FROM wp_usermeta WHERE meta_key IN ('_calculation_form_coupon', '_calculation_form_mails', '_calculation_forms_multistep_style', '_calculation_form', '_calculation_form_messages', '_calculation_form_paypal', '_payment', '_form_id', '_form_id_mail_attachments', '_payment_total', '_payment_currency_code', '_calculation_forms_mailchimp', '_calculation_forms_mailchimp_merge_fields', '_calculation_forms_pdf', '_calculation_forms_zapier');
DELETE FROM wp_termmeta WHERE meta_key IN ('_calculation_form_coupon', '_calculation_form_mails', '_calculation_forms_multistep_style', '_calculation_form', '_calculation_form_messages', '_calculation_form_paypal', '_payment', '_form_id', '_form_id_mail_attachments', '_payment_total', '_payment_currency_code', '_calculation_forms_mailchimp', '_calculation_forms_mailchimp_merge_fields', '_calculation_forms_pdf', '_calculation_forms_zapier');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_calculation_form_coupon', '_calculation_form_mails', '_calculation_forms_multistep_style', '_calculation_form', '_calculation_form_messages', '_calculation_form_paypal', '_payment', '_form_id', '_form_id_mail_attachments', '_payment_total', '_payment_currency_code', '_calculation_forms_mailchimp', '_calculation_forms_mailchimp_merge_fields', '_calculation_forms_pdf', '_calculation_forms_zapier');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';

