-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magic_login_mail_valid_errors', 'magic_login_mail_email_errors', 'magic_login_mail_email_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'magic_login_mail_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'magic_login_mail_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'magic_login_mail_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'magic_login_mail_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expiration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expiration';

