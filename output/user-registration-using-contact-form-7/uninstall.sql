-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zurcf7_formid', 'zurcf7_debug_mode_status', 'zurcf7_skipcf7_email', 'zurcf7_successurl_field', 'zurcf7_email_field', 'zurcf7_username_field', 'zurcf7_userrole_field', 'zurcf7_fb_signup_app_id', 'zurcf7_fb_app_secret', 'zurcf7_enable_sent_login_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%form_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%form_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%form_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%form_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%form_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%form_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%form_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%form_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_login';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_login';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_login';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_login';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%role';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%role';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%role';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%role';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_pass';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_pass';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_pass';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_pass';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_id';

