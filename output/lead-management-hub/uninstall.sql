-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadmahu_states');
DELETE FROM wp_options WHERE option_name LIKE 'leadmahu_captcha_%';
DELETE FROM wp_options WHERE option_name LIKE 'leadmahu_captcha_nonce_%';
DELETE FROM wp_options WHERE option_name LIKE 'leadmahu_last_submission_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_leadmahu_email', '_leadmahu_phone', '_leadmahu_company', '_leadmahu_status', '_leadmahu_observations', '_form_fields', '_recipient_email', '_subject_client', '_client_default_text', '_custom_fields', '_form_required_name', '_form_required_email', '_form_required_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_leadmahu_email', '_leadmahu_phone', '_leadmahu_company', '_leadmahu_status', '_leadmahu_observations', '_form_fields', '_recipient_email', '_subject_client', '_client_default_text', '_custom_fields', '_form_required_name', '_form_required_email', '_form_required_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_leadmahu_email', '_leadmahu_phone', '_leadmahu_company', '_leadmahu_status', '_leadmahu_observations', '_form_fields', '_recipient_email', '_subject_client', '_client_default_text', '_custom_fields', '_form_required_name', '_form_required_email', '_form_required_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_leadmahu_email', '_leadmahu_phone', '_leadmahu_company', '_leadmahu_status', '_leadmahu_observations', '_form_fields', '_recipient_email', '_subject_client', '_client_default_text', '_custom_fields', '_form_required_name', '_form_required_email', '_form_required_message');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_form_required_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_form_required_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_form_required_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_form_required_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_leadmahu_custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_leadmahu_custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_leadmahu_custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_leadmahu_custom_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

