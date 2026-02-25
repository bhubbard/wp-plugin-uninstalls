#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xs_style_setting_data_share'
wp option delete 'xs_share_global_setting_data'
wp option delete 'xs_share_providers_data'
wp option delete 'wp_social_login_sync_image_too'
wp option delete 'xs_global_setting_data'
wp option delete 'wp_social_login_sync'
wp option delete 'xs_style_setting_data'
wp option delete 'xs_counter_tiktok_app_id'
wp option delete 'xs_counter_tiktok_app_secret'
wp option delete 'wp_social_user_consent_for_promotional_content'
wp option delete 'xs_counter_global_setting_data'
wp option delete 'xs_style_setting_data_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_app_secret'"
wp option delete 'xs_counter_dribbble_app_id'
wp option delete 'xs_counter_dribbble_app_secret'
wp option delete 'xs_counter_active'
wp option delete 'xs_counter_providers_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__announcements_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__announcements_last_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check'"
wp option delete 'xs_counter_options'
wp option delete 'xs_counter_twitter_token'
wp option delete '_xs_social_facebook_last_cached'
wp option delete 'xs_counter_VimeoToken'
wp option delete 'xs_counter_dribbble_token'
wp option delete 'xs_counter_EnvatoToken'
wp option delete 'foursquare_access_token'
wp option delete '_xs_social_mailchimp_last_cached'
wp option delete 'xs_counter_linkedin_token'
wp option delete 'tumblr_api_key'
wp option delete 'tumblr_api_secret'
wp option delete 'tumblr_oauth_token'
wp option delete 'tumblr_token_secret'
wp option delete 'twitch_access_token'
wp option delete 'home_url_dribbble_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_never_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check'"
wp option delete 'gutenkit_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_created'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_cached'"
wp option delete 'xs_share_providers_order'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_client_id' OR option_name LIKE '_site_transient_%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_client_secret' OR option_name LIKE '_site_transient_%_client_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_api_key' OR option_name LIKE '_site_transient_%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_secret_key' OR option_name LIKE '_site_transient_%_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_xs_share_data__%' OR option_name LIKE '_site_transient_xs_share_data__%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_xs_share_data__%' OR option_name LIKE '_site_transient_timeout_xs_share_data__%'"
wp transient delete 'xs_counters_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_social_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_social_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_social_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_social_profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_share_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_share_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_share_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_share_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_social_register_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_social_register_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_social_register_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_social_register_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_social_profile_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_social_profile_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_social_profile_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_social_profile_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_social_profile_image_error_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_social_profile_image_error_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_social_profile_image_error_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_social_profile_image_error_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_password_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_password_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_password_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_password_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xs_share_data__'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xs_share_data__'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xs_share_data__'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xs_share_data__'"
