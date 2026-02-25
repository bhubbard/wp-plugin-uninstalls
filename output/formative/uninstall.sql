-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formative_rating_dismissed', 'formative_activation_time', 'formative_recaptcha_version', 'formative_recaptcha_v2_site_key', 'formative_recaptcha_v2_secret_key', 'formative_recaptcha_v3_site_key', 'formative_recaptcha_v3_secret_key', 'formative_email_from_name', 'formative_email_from_address', 'formative_store_entries', 'formative_delete_data', 'formative_db_version', 'formative_color_theme', 'formative_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'formative_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quiz_data', '_formative_settings', '_formative_fields', '_form_id', '_entry_data', '_quiz_score', '_quiz_percentage', '_user_ip', '_user_agent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quiz_data', '_formative_settings', '_formative_fields', '_form_id', '_entry_data', '_quiz_score', '_quiz_percentage', '_user_ip', '_user_agent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quiz_data', '_formative_settings', '_formative_fields', '_form_id', '_entry_data', '_quiz_score', '_quiz_percentage', '_user_ip', '_user_agent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quiz_data', '_formative_settings', '_formative_fields', '_form_id', '_entry_data', '_quiz_score', '_quiz_percentage', '_user_ip', '_user_agent');

