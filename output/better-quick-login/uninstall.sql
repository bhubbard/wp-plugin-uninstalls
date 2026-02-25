-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bql_login_form', 'bql_expire_time', 'bql_keep_logged_in', 'bql_force_one_session', 'bql_recaptcha_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quicklogin_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('quicklogin_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('quicklogin_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quicklogin_token');

