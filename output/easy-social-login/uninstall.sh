#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eslp_easy_social_login_woocommerce_checkout'
wp option delete 'eslp_easy_social_login_settings'
wp option delete 'eslp_easy_social_login_user_role'
wp option delete 'eslp_easy_social_login_notify_admin'
wp option delete 'eslp_easy_social_login_redirect_url'
wp option delete 'eslp_easy_social_login_display_header_message'
wp option delete 'eslp_easy_social_login_display_button_login'
wp option delete 'eslp_easy_social_login_display_button_register'
wp option delete 'eslp_easy_social_login_button_position'
wp option delete 'eslp_easy_social_login_woocommerce_login'
wp option delete 'eslp_easy_social_login_woocommerce_register'
wp option delete 'eslp_hide_donate_time'
wp option delete 'eslp_last_hide'
wp option delete 'eslp_database_version'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'eslp_facebook_enabled'
wp option delete 'eslp_facebook_app_id'
wp option delete 'eslp_facebook_app_secret'
wp option delete 'eslp_facebook_oauth_redirect_uri'
wp option delete 'eslp_facebook_locale'
wp option delete 'eslp_google_client_id'
wp option delete 'eslp_google_redirect_uri'
wp option delete 'eslp_google_enabled'
wp option delete 'eslp_google_client_secret'
wp option delete 'eslp_windowslive_enabled'
wp option delete 'eslp_windows_live_client_id'
wp option delete 'eslp_windows_live_client_secret'
wp option delete 'eslp_windowslive_oauth_redirect_uri'
wp option delete 'eslp_social_login_user_role'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eslp_facebook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eslp_facebook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eslp_facebook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eslp_facebook_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eslp_google_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eslp_google_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eslp_google_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eslp_google_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eslp_microsoft_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eslp_microsoft_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eslp_microsoft_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eslp_microsoft_id'"
