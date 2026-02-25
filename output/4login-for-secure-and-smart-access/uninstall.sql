-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('made_by_fourlogin', 'fourlogin_login_code', 'fourlogin_sent_fourlogincode');
DELETE FROM wp_usermeta WHERE meta_key IN ('made_by_fourlogin', 'fourlogin_login_code', 'fourlogin_sent_fourlogincode');
DELETE FROM wp_termmeta WHERE meta_key IN ('made_by_fourlogin', 'fourlogin_login_code', 'fourlogin_sent_fourlogincode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('made_by_fourlogin', 'fourlogin_login_code', 'fourlogin_sent_fourlogincode');

