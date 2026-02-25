-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_AMPLIFY_API_KEY', '_AMPLIFY_API_SECRET', '_AMPLIFY_PROJECT_ID', 'amplify_login_loginform', 'amplify_login_loginform_widgetId', 'amplify_login_registration', 'amplify_login_registration_widgetId', 'amplify_track_searches', 'amplify_track_posts', 'amplify_track_pages', 'amplify_track_archives', 'amplify_opengraphtag', 'amplify_twittercard', 'amplify_twittername', 'amplify_fb_app_id', 'amplify_facebook_admins', 'amplify_loginprofile', 'amplify_login_abovecomment', 'amplify_login_abovecomment_widgetId', 'amplify_login_sidebar', 'amplify_login_sidebar_widgetId', 'amplify_share_above_post', 'amplify_share_above_post_widgetId', 'amplify_share_below_post', 'amplify_share_below_post_widgetId');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amplifyUserId', 'thumbnail', 'email');
DELETE FROM wp_usermeta WHERE meta_key IN ('amplifyUserId', 'thumbnail', 'email');
DELETE FROM wp_termmeta WHERE meta_key IN ('amplifyUserId', 'thumbnail', 'email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amplifyUserId', 'thumbnail', 'email');

