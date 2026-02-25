-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xs_style_setting_data_share', 'xs_share_global_setting_data', 'xs_share_providers_data', 'wp_social_login_sync_image_too', 'xs_global_setting_data', 'wp_social_login_sync', 'xs_style_setting_data', 'xs_counter_tiktok_app_id', 'xs_counter_tiktok_app_secret', 'wp_social_user_consent_for_promotional_content', 'xs_counter_global_setting_data', 'xs_style_setting_data_counter', 'xs_counter_dribbble_app_id', 'xs_counter_dribbble_app_secret', 'xs_counter_active', 'xs_counter_providers_data', 'xs_counter_options', 'xs_counter_twitter_token', '_xs_social_facebook_last_cached', 'xs_counter_VimeoToken', 'xs_counter_dribbble_token', 'xs_counter_EnvatoToken', 'foursquare_access_token', '_xs_social_mailchimp_last_cached', 'xs_counter_linkedin_token', 'tumblr_api_key', 'tumblr_api_secret', 'tumblr_oauth_token', 'tumblr_token_secret', 'twitch_access_token', 'home_url_dribbble_count', 'gutenkit_do_activation_redirect', 'xs_share_providers_order', 'xs_counters_data');
DELETE FROM wp_options WHERE option_name LIKE '%_token';
DELETE FROM wp_options WHERE option_name LIKE '%_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%_app_secret';
DELETE FROM wp_options WHERE option_name LIKE '%__announcements_data';
DELETE FROM wp_options WHERE option_name LIKE '%__announcements_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_created';
DELETE FROM wp_options WHERE option_name LIKE '%_last_cached';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';
DELETE FROM wp_options WHERE option_name LIKE 'xs_share_data__%';
DELETE FROM wp_options WHERE option_name LIKE 'timeout_xs_share_data__%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xs_social_profile_image', 'social_share_style', 'xs_social_register_by', 'xs_social_profile_image_id', 'xs_social_profile_image_error_log', 'xs_password_changed', 'first_name', 'last_name', 'display_name', 'description', 'xs_share_data__');
DELETE FROM wp_usermeta WHERE meta_key IN ('xs_social_profile_image', 'social_share_style', 'xs_social_register_by', 'xs_social_profile_image_id', 'xs_social_profile_image_error_log', 'xs_password_changed', 'first_name', 'last_name', 'display_name', 'description', 'xs_share_data__');
DELETE FROM wp_termmeta WHERE meta_key IN ('xs_social_profile_image', 'social_share_style', 'xs_social_register_by', 'xs_social_profile_image_id', 'xs_social_profile_image_error_log', 'xs_password_changed', 'first_name', 'last_name', 'display_name', 'description', 'xs_share_data__');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xs_social_profile_image', 'social_share_style', 'xs_social_register_by', 'xs_social_profile_image_id', 'xs_social_profile_image_error_log', 'xs_password_changed', 'first_name', 'last_name', 'display_name', 'description', 'xs_share_data__');

