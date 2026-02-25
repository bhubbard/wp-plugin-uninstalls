-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dh_login', 'dh_tfa', 'dh_google_tfa_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_user_tfa_feature', '_user_login_tfa_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('_user_tfa_feature', '_user_login_tfa_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('_user_tfa_feature', '_user_login_tfa_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_user_tfa_feature', '_user_login_tfa_verified');

