-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron');
DELETE FROM wp_options WHERE option_name LIKE '%close_msg_head';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%2fa_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%2fa_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%2fa_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%2fa_enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%2fa_method';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%2fa_method';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%2fa_method';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%2fa_method';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%2fa_secret_key';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%2fa_secret_key';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%2fa_secret_key';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%2fa_secret_key';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%fb_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%fb_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%fb_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%fb_enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%fbid';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%fbid';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%fbid';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%fbid';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pin_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pin_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pin_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pin_enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%pin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%pin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%pin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%pin';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%q_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%q_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%q_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%q_enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%q';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%q';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%q';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%q';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%a';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%a';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%a';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%a';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%2fa_nonce';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%2fa_nonce';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%2fa_nonce';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%2fa_nonce';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%2fa_fresh_email_code';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%2fa_fresh_email_code';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%2fa_fresh_email_code';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%2fa_fresh_email_code';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_status';

