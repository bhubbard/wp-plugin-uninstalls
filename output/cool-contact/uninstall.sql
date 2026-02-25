-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toemail', 'fromemail', 'requirename', 'used_name', 'name_minlength', 'name_maxlength', 'require_email', 'used_email', 'used_captcha', 'require_subject', 'used_subject', 'subject_minlength', 'subject_maxlength', 'email_subject', 'content_minlength', 'content_maxlength', 'ip_address', 'user_referer', 'user_browser', 'used_url', 'require_url', 'url_minlength', 'url_maxlength', 'used_phone', 'require_phone', 'phone_minlength', 'phone_maxlength', 'required_symbol', 'send_copy');

