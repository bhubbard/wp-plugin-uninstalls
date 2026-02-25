-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doobert_api_token_value', 'doobert_validation_data', '_doobert_token_value', 'doobert-chatbot-custom-settings', 'doobert-chatbot-petclove-settings', 'doobert-chatbot-adopt-settings', 'doobert_is_training_data_loaded', '_doobert_excluded_posts_from_api', 'doobert_audit_email', '_doobert_token_time_stamp', '_doobert_chatbot_design_settings', 'token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_doobert_filename_pdf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_doobert_filename_pdf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_doobert_filename_pdf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_doobert_filename_pdf');

