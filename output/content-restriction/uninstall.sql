-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_content_restriction_redirect_to_dashboard', '_content_restriction_first_activation_time');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('login_me_now_facebook_verified', 'login_me_now_google_verified');
DELETE FROM wp_usermeta WHERE meta_key IN ('login_me_now_facebook_verified', 'login_me_now_google_verified');
DELETE FROM wp_termmeta WHERE meta_key IN ('login_me_now_facebook_verified', 'login_me_now_google_verified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('login_me_now_facebook_verified', 'login_me_now_google_verified');

