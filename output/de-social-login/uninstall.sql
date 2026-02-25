-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('de_social_login_force_register', 'de_social_login_force_register_message', 'de_social_login_facebook_enable', 'de_social_login_facebook_id', 'de_social_login_facebook_secret', 'de_social_login_twitter_enable', 'de_social_login_twitter_id', 'de_social_login_twitter_secret', 'de_social_login_google_enable', 'de_social_login_google_client', 'de_social_login_google_secret', 'de_social_login_openid_enable', 'de_social_login_linkedin_enable', 'de_social_login_linkedin_id', 'de_social_login_linkedin_secret', 'de_social_login_yahoo_enable', 'de_social_login_yahoo_id', 'de_social_login_yahoo_domain', 'de_social_login_yahoo_key', 'de_social_login_yahoo_secret', 'de_social_login_orders');
DELETE FROM wp_options WHERE option_name LIKE '%_enable';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email', 'first_name', 'last_name', 'deuid', 'deutype', 'deuimage');
DELETE FROM wp_usermeta WHERE meta_key IN ('email', 'first_name', 'last_name', 'deuid', 'deutype', 'deuimage');
DELETE FROM wp_termmeta WHERE meta_key IN ('email', 'first_name', 'last_name', 'deuid', 'deutype', 'deuimage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email', 'first_name', 'last_name', 'deuid', 'deutype', 'deuimage');

