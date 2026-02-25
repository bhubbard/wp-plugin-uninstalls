-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rtform_form_entry_title', 'rtform_form_restricted', 'rtform_form_success_message', 'rtform_shortcode', 'rtform_email_confirmation', 'rtform_email_notification', 'rform-entri-data', 'rform-entri-form-id', 'rform-entri-referal', 'rform-hasbeen-rated');
DELETE FROM wp_usermeta WHERE meta_key IN ('rtform_form_entry_title', 'rtform_form_restricted', 'rtform_form_success_message', 'rtform_shortcode', 'rtform_email_confirmation', 'rtform_email_notification', 'rform-entri-data', 'rform-entri-form-id', 'rform-entri-referal', 'rform-hasbeen-rated');
DELETE FROM wp_termmeta WHERE meta_key IN ('rtform_form_entry_title', 'rtform_form_restricted', 'rtform_form_success_message', 'rtform_shortcode', 'rtform_email_confirmation', 'rtform_email_notification', 'rform-entri-data', 'rform-entri-form-id', 'rform-entri-referal', 'rform-hasbeen-rated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rtform_form_entry_title', 'rtform_form_restricted', 'rtform_form_success_message', 'rtform_shortcode', 'rtform_email_confirmation', 'rtform_email_notification', 'rform-entri-data', 'rform-entri-form-id', 'rform-entri-referal', 'rform-hasbeen-rated');

