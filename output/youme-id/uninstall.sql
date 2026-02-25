-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ymid_captcha_key', 'ymid_captcha_secret', 'ymid_forms', 'ymid_failed_login_allow', 'ymid_ym_login', 'ymid_redirect_option', 'ymid_redirect_page', 'ymid_working', 'ymid_error', 'ymid_google_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ymid_uid', 'ymid_access_token', 'ymid_avatar', 'ymid_email', 'ymid_did_band');
DELETE FROM wp_usermeta WHERE meta_key IN ('ymid_uid', 'ymid_access_token', 'ymid_avatar', 'ymid_email', 'ymid_did_band');
DELETE FROM wp_termmeta WHERE meta_key IN ('ymid_uid', 'ymid_access_token', 'ymid_avatar', 'ymid_email', 'ymid_did_band');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ymid_uid', 'ymid_access_token', 'ymid_avatar', 'ymid_email', 'ymid_did_band');

