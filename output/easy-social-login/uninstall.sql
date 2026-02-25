-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eslp_easy_social_login_woocommerce_checkout', 'eslp_easy_social_login_settings', 'eslp_easy_social_login_user_role', 'eslp_easy_social_login_notify_admin', 'eslp_easy_social_login_redirect_url', 'eslp_easy_social_login_display_header_message', 'eslp_easy_social_login_display_button_login', 'eslp_easy_social_login_display_button_register', 'eslp_easy_social_login_button_position', 'eslp_easy_social_login_woocommerce_login', 'eslp_easy_social_login_woocommerce_register', 'eslp_hide_donate_time', 'eslp_last_hide', 'eslp_database_version', 'woocommerce_enable_myaccount_registration', 'woocommerce_enable_signup_and_login_from_checkout', 'eslp_facebook_enabled', 'eslp_facebook_app_id', 'eslp_facebook_app_secret', 'eslp_facebook_oauth_redirect_uri', 'eslp_facebook_locale', 'eslp_google_client_id', 'eslp_google_redirect_uri', 'eslp_google_enabled', 'eslp_google_client_secret', 'eslp_windowslive_enabled', 'eslp_windows_live_client_id', 'eslp_windows_live_client_secret', 'eslp_windowslive_oauth_redirect_uri', 'eslp_social_login_user_role');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eslp_facebook_id', 'eslp_google_id', 'eslp_microsoft_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('eslp_facebook_id', 'eslp_google_id', 'eslp_microsoft_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('eslp_facebook_id', 'eslp_google_id', 'eslp_microsoft_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eslp_facebook_id', 'eslp_google_id', 'eslp_microsoft_id');

