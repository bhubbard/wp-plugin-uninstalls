-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qa_setting_captcha', 'qa_setting_captcha_publickey', 'qa_setting_captcha_privatekey', 'qa_setting_email', 'qa_setting_default_email', 'qa_setting_user_response', 'qa_setting_number_qa', 'qa_setting_default_answer', 'qa_setting_background_open', 'qa_setting_background_close', 'qa-admin-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qa_username', 'qa_email', 'qa_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('qa_username', 'qa_email', 'qa_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('qa_username', 'qa_email', 'qa_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qa_username', 'qa_email', 'qa_ip');

