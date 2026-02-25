-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cl_chooserole', 'cl_logout_redirect', 'cl_logout_redirect_url', 'cl_gcaptcha', 'cl_gcaptcha_sitekey', 'cl_hideuser', 'cl_nameandsurname', 'cl_email_username', 'cl_single_password', 'cl_antispam', 'cl_newuserroles', 'cl_termsconditions', 'cl_termsconditionsMSG', 'cl_enable_hash_in_login_page', 'cl_login_redirect', 'cl_passcomplex', 'cl_standby', 'cl_emailnotification', 'cl_emailnotificationcontent', 'cl_automatic_login', 'cl_emailvalidation', 'cl_gcaptcha_secretkey', 'cl_login_id', 'cl_login_url', 'cl_edit_id', 'cl_restore_id', 'cl_restore_url', 'cl_register_id', 'cl_register_url', 'cl_register_redirect', 'cl_register_redirect_url', 'cl_adminbar_roles', 'cl_adminbar', 'cl_dashboard', 'cl_edit_url', 'cl_termsconditionsURL', 'cl_url_redirect', 'cl_login_redirect_url');
DELETE FROM wp_options WHERE option_name LIKE '%_id';
DELETE FROM wp_options WHERE option_name LIKE '%_url';
DELETE FROM wp_options WHERE option_name LIKE 'cl_temporary_pass_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_new_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_new_email');

