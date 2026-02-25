-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skyflow_forms_unsub_page_id', 'skyflow_forms_label_placement', 'skyflow_forms_help_placement', 'skyflow_forms_error_placement', 'skyflow_forms_success_placement', 'skyflow_forms_validation_messages', 'skyflow_forms_recaptcha_enabled', 'skyflow_forms_recaptcha_site_key', 'skyflow_forms_recaptcha_secret_key', 'skyflow_forms_recaptcha_version', 'skyflow_forms_hcaptcha_enabled', 'skyflow_forms_hcaptcha_site_key', 'skyflow_forms_hcaptcha_secret_key', 'skyflow_forms_hcaptcha_theme', 'skyflow_forms_email_settings');
DELETE FROM wp_options WHERE option_name LIKE 'skyflow_forms_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'skyflow_forms_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'skyflow_forms_email_meta_%';

