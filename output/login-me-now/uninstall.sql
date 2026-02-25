-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_me_now_algorithm', 'login_me_now_secret_key');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('login_me_now_hide_save_to_browser_extension', 'login_me_now_facebook_verified', 'login_me_now_google_verified', 'nickname', 'login_me_now_google_profile_picture_url', 'login_me_now_facebook_profile_picture_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('login_me_now_hide_save_to_browser_extension', 'login_me_now_facebook_verified', 'login_me_now_google_verified', 'nickname', 'login_me_now_google_profile_picture_url', 'login_me_now_facebook_profile_picture_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('login_me_now_hide_save_to_browser_extension', 'login_me_now_facebook_verified', 'login_me_now_google_verified', 'nickname', 'login_me_now_google_profile_picture_url', 'login_me_now_facebook_profile_picture_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('login_me_now_hide_save_to_browser_extension', 'login_me_now_facebook_verified', 'login_me_now_google_verified', 'nickname', 'login_me_now_google_profile_picture_url', 'login_me_now_facebook_profile_picture_url');

