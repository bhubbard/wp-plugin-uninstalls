-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csc_general_settings', 'csc_login_attempts_settings', 'csc_redirect', 'csc_admin');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('comment_captcha');
DELETE FROM wp_usermeta WHERE meta_key IN ('comment_captcha');
DELETE FROM wp_termmeta WHERE meta_key IN ('comment_captcha');
DELETE FROM wp_commentmeta WHERE meta_key IN ('comment_captcha');

