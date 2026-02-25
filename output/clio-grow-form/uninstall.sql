-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lf_recaptcha_v3_site_key', 'lf_custom_css', 'lf_authorization_token', 'lf_disclaimer_text', 'lf_google_analytics_id', 'lf_grow_region', 'lf_recaptcha_v3_secret_key', 'lf_recaptcha_site_key', 'lf_recaptcha_secret_key', 'lf_thankyou_uri', 'lf_successful_submit_message', 'lf_domain_blacklist', 'lf_form_heading', 'lf_firstname_field_label', 'lf_firstname_placeholder_label', 'lf_lastname_field_label', 'lf_lastname_placeholder_label', 'lf_email_field_label', 'lf_email_placeholder_label', 'lf_phone_field_label', 'lf_phone_placeholder_label', 'lf_message_field_label', 'lf_message_placeholder_label', 'lf_submit_button_text', 'lf_submit_button_color', 'lf_submit_button_text_color');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

