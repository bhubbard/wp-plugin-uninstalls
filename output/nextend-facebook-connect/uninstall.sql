-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsl-version');
DELETE FROM wp_options WHERE option_name LIKE 'nsl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nsl_newsletter_subscription', 'profile_photo', 'nsl_user_avatar_md5', '_wp_attachment_wp_user_avatar', 'billing_first_name', 'billing_last_name', 'timestamp', 'wcemailverified', 'fb_user_access_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('nsl_newsletter_subscription', 'profile_photo', 'nsl_user_avatar_md5', '_wp_attachment_wp_user_avatar', 'billing_first_name', 'billing_last_name', 'timestamp', 'wcemailverified', 'fb_user_access_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('nsl_newsletter_subscription', 'profile_photo', 'nsl_user_avatar_md5', '_wp_attachment_wp_user_avatar', 'billing_first_name', 'billing_last_name', 'timestamp', 'wcemailverified', 'fb_user_access_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nsl_newsletter_subscription', 'profile_photo', 'nsl_user_avatar_md5', '_wp_attachment_wp_user_avatar', 'billing_first_name', 'billing_last_name', 'timestamp', 'wcemailverified', 'fb_user_access_token');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_avatar';

