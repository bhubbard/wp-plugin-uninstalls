-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_read_before', 'iwacontact_data', 'iwacontact_sendto', 'iwacontact_subject', 'iwacontact_from', 'iwacontact_submit_value', 'iwacontact_redirect', '_use_custom_body', '_custom_body', '_use_captcha', '_captcha_type', 'tv_show', '_form_id', '_sent', '_copy_sent', '_mail_to', '_mail_from', '_mail_subject', '_form_data', '_email_body');
DELETE FROM wp_usermeta WHERE meta_key IN ('_read_before', 'iwacontact_data', 'iwacontact_sendto', 'iwacontact_subject', 'iwacontact_from', 'iwacontact_submit_value', 'iwacontact_redirect', '_use_custom_body', '_custom_body', '_use_captcha', '_captcha_type', 'tv_show', '_form_id', '_sent', '_copy_sent', '_mail_to', '_mail_from', '_mail_subject', '_form_data', '_email_body');
DELETE FROM wp_termmeta WHERE meta_key IN ('_read_before', 'iwacontact_data', 'iwacontact_sendto', 'iwacontact_subject', 'iwacontact_from', 'iwacontact_submit_value', 'iwacontact_redirect', '_use_custom_body', '_custom_body', '_use_captcha', '_captcha_type', 'tv_show', '_form_id', '_sent', '_copy_sent', '_mail_to', '_mail_from', '_mail_subject', '_form_data', '_email_body');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_read_before', 'iwacontact_data', 'iwacontact_sendto', 'iwacontact_subject', 'iwacontact_from', 'iwacontact_submit_value', 'iwacontact_redirect', '_use_custom_body', '_custom_body', '_use_captcha', '_captcha_type', 'tv_show', '_form_id', '_sent', '_copy_sent', '_mail_to', '_mail_from', '_mail_subject', '_form_data', '_email_body');

