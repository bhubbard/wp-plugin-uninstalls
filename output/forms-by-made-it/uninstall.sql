-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('madeit_form_db_v', 'madeit_forms_reCaptcha_version', 'madeit_forms_reCaptcha', 'madeit_forms_reCaptcha_key', 'madeit_forms_reCaptcha_secret', 'madeit_forms_reCaptcha_minScore');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_id', 'form', 'messages', 'actions', 'form_type', 'save_inputs', 'data', 'ip', 'user_agent', 'spam', 'read', 'result', 'old_input_id', 'ac_contact_id', 'max_submits');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_id', 'form', 'messages', 'actions', 'form_type', 'save_inputs', 'data', 'ip', 'user_agent', 'spam', 'read', 'result', 'old_input_id', 'ac_contact_id', 'max_submits');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_id', 'form', 'messages', 'actions', 'form_type', 'save_inputs', 'data', 'ip', 'user_agent', 'spam', 'read', 'result', 'old_input_id', 'ac_contact_id', 'max_submits');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_id', 'form', 'messages', 'actions', 'form_type', 'save_inputs', 'data', 'ip', 'user_agent', 'spam', 'read', 'result', 'old_input_id', 'ac_contact_id', 'max_submits');

