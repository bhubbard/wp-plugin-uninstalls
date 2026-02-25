-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formera_gdpr_mode', 'formera_brand_color', 'formera_container_width', 'formera_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_formera_subject', '_formera_content', '_formera_updated_at', '_formera_questions', '_formera_settings', '_formera_status', '_formera_survey_id', '_formera_user_id', '_formera_ip_address', '_formera_response_data', '_formera_message', '_formera_recipients', '_formera_sent_at', '_formera_name', '_formera_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_formera_subject', '_formera_content', '_formera_updated_at', '_formera_questions', '_formera_settings', '_formera_status', '_formera_survey_id', '_formera_user_id', '_formera_ip_address', '_formera_response_data', '_formera_message', '_formera_recipients', '_formera_sent_at', '_formera_name', '_formera_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_formera_subject', '_formera_content', '_formera_updated_at', '_formera_questions', '_formera_settings', '_formera_status', '_formera_survey_id', '_formera_user_id', '_formera_ip_address', '_formera_response_data', '_formera_message', '_formera_recipients', '_formera_sent_at', '_formera_name', '_formera_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_formera_subject', '_formera_content', '_formera_updated_at', '_formera_questions', '_formera_settings', '_formera_status', '_formera_survey_id', '_formera_user_id', '_formera_ip_address', '_formera_response_data', '_formera_message', '_formera_recipients', '_formera_sent_at', '_formera_name', '_formera_email');

