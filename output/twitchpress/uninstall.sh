#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitchpress_main_code'
wp option delete 'twitchpress_main_client_id'
wp option delete 'twitchpress_main_token'
wp option delete 'twitchpress_main_token_scopes'
wp option delete 'twitchpress_main_channels_code'
wp option delete 'twitchpress_main_channels_wpowner_id'
wp option delete 'twitchpress_main_channels_token'
wp option delete 'twitchpress_main_channels_refresh_token'
wp option delete 'twitchpress_main_channels_scopes'
wp option delete 'twitchpress_main_channels_authtime'
wp option delete 'twitchpress_main_channels_name'
wp option delete 'twitchpress_main_channels_id'
wp option delete 'twitchpress_main_channels_postid'
wp option delete 'twitchpress_main_channels_expires_in'
wp option delete 'twitchpress_bot_channels_code'
wp option delete 'twitchpress_bot_channels_wpowner_id'
wp option delete 'twitchpress_bot_channels_token'
wp option delete 'twitchpress_bot_channels_refresh_token'
wp option delete 'twitchpress_bot_channels_scopes'
wp option delete 'twitchpress_bot_channels_name'
wp option delete 'twitchpress_bot_channels_id'
wp option delete 'twitchpress_bot_channels_postid'
wp option delete 'twitchpress_app_id'
wp option delete 'twitchpress_app_secret'
wp option delete 'twitchpress_app_redirect'
wp option delete 'twitchpress_app_token'
wp option delete 'twitchpress_app_expiry'
wp option delete 'twitchpress_app_scopes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_visitor_scope_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_scope_%'"
wp option delete 'twitchpress_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_shareable_posttype_%'"
wp option delete 'twitchpress_redirect_tracking_switch'
wp option delete 'twitchpress_displayerrors'
wp option delete 'bugnet_error_dump_user_id'
wp option delete 'twitchpress_sync_timing'
wp option delete 'twitchpress_twitchapi_call_count'
wp option delete 'twitchpress_login_prevent_redirect'
wp option delete 'twitchpress_main_channel_team_id'
wp option delete 'twitchpress_perks_switch'
wp option delete 'twitchpress_giveaways_switch'
wp option delete 'twitchpress_webhooks_switch'
wp option delete 'twitchpress_bot_switch'
wp option delete 'twitchpress_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_admin_notice_%'"
wp option delete 'twitchpress_db_version'
wp option delete 'twitchpress_allapi_youtube_default_id'
wp option delete 'twitchpress_file_download_method'
wp option delete 'twitchpress_main_youtube_name'
wp option delete 'twitchpress_main_youtube_id'
wp option delete 'twitchpress_allapi_youtube_default_uri'
wp option delete 'twitchpress_allapi_youtube_default_secret'
wp option delete 'twitchpress_main_channel_name_youtube'
wp option delete 'twitchpress_main_channel_id_youtube'
wp option delete 'bugnet_version'
wp option delete 'twitchpress_twitchsubscribers_switch'
wp option delete 'twitchpress_feedback_data'
wp option delete 'twitchpress_feedback_prompt'
wp option delete 'twitchpress_purpose_casualstreamer'
wp option delete 'twitchpress_purpose_partneredstreamer'
wp option delete 'twitchpress_purpose_streamteam'
wp option delete 'twitchpress_purpose_publicservice'
wp option delete 'twitchpress_purpose_business'
wp option delete 'twitchpress_purpose_other'
wp option delete 'twitchpress_team_name'
wp option delete 'twitchpress_giveaways_version'
wp option delete 'twitchpress_bugnet_cache_action_hooks'
wp option delete 'twitchpress_bot_code'
wp option delete 'twitchpress_api_logging_switch'
wp option delete 'twitchpress_api_logging_body_switch'
wp option delete 'twitchpress_login_messages'
wp option delete 'twitchpress_automatic_registration'
wp option delete 'twitchpress_login_loggedin_page_id'
wp option delete 'twitchpress_login_button_text'
wp option delete 'twitchpress_login_redirect_to_custom'
wp option delete 'twitchpress_login_mainform_page_id'
wp option delete 'twitchpress_registration_requirevalidemail'
wp option delete 'twitchpress_login_redirect_all'
wp option delete 'twitchpress_login_loginpage_position'
wp option delete 'twitchpress_login_button'
wp option delete 'twitchpress_login_loginpage_type'
wp option delete 'twitchpress_login_requiretwitch'
wp option delete 'twitchpress_app_expires_in'
wp option delete 'twitchpress_bot_channels_refresh'
wp option delete 'twitchpress_main_channels_refresh'
wp option delete 'twitchpress_main_channels_expiry'
wp option delete 'twitchpress_sync_switch_channel_subscribers'
wp option delete 'twitchpress_sync_job_channel_subscribers'
wp option delete 'twitchpress_livemenu_switch'
wp option delete 'twitchpress_livemenu_teamid'
wp option delete 'twitchpress_um_subtorole_none'
wp option delete 'twitchpress_um_subtorole_prime'
wp option delete 'twitchpress_um_subtorole_1000'
wp option delete 'twitchpress_um_subtorole_2000'
wp option delete 'twitchpress_um_subtorole_3000'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_uri'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_owner'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%__main_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_expires_in'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_main_access_token'"
wp option delete 'twitchpress_discord'
wp option delete 'twitchpress_streamlabs'
wp option delete 'twitchpress_youtube'
wp option delete 'twitchpress_streamlabs_main_code'
wp option delete 'twitchpress_streamlabs_main_owner'
wp option delete 'twitchpress_streamlabs_main_access_token'
wp option delete 'twitchpress_streamlabs_main_expires_in'
wp option delete 'twitchpress_streamlabs_main_refresh_token'
wp option delete 'twitchpress_allapi_streamlabs_default_code'
wp option delete 'twitchpress_allapi_streamlabs_default_owner'
wp option delete 'twitchpress_allapi_streamlabs_default_access_token'
wp option delete 'twitchpress_allapi_streamlabs_default_expires_in'
wp option delete 'twitchpress_allapi_streamlabs_default_refresh_token'
wp option delete 'bugnet_activate_events'
wp option delete 'bugnet_activate_log'
wp option delete 'bugnet_activate_tracing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bugnet_levelswitch_%'"
wp option delete 'bugnet_systemlogging_switch'
wp option delete 'twitchpress_apiversion'
wp option delete 'twitchpress_beta_testing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'twitchpress_um_subtorole_%'"
wp option delete 'twitchpress_beta_mode'
wp option delete 'twitchpress_version'
wp option delete 'twitchpress_display_actions'
wp option delete 'twitchpress_display_filters'
wp option delete 'twitchpress_history'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_oauth_%' OR option_name LIKE '_site_transient_twitchpress_oauth_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_current_user_syncing_%' OR option_name LIKE '_site_transient_twitchpress_current_user_syncing_%'"
wp transient delete 'twitchpress_sub_checked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_sub_checked%' OR option_name LIKE '_site_transient_twitchpress_sub_checked%'"
wp transient delete 'twitchpresshelptabappstatus'
wp transient delete 'twitchpresshelptabchannelstatus'
wp transient delete '_twitchpress_activation_redirect'
wp transient delete 'bugnet_wpaction'
wp transient delete 'twitchpress_twitch_requests'
wp transient delete 'twitchpress_kraken_requests'
wp transient delete 'twitchpress_history'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_video%' OR option_name LIKE '_site_transient_twitchpress_video%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_videos%' OR option_name LIKE '_site_transient_twitchpress_videos%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_get_top_games_list%' OR option_name LIKE '_site_transient_twitchpress_get_top_games_list%'"
wp transient delete 'twitchpress_shortcode_channel_status_line'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_channel_status_line_%' OR option_name LIKE '_site_transient_twitchpress_channel_status_line_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_channel_status_line%' OR option_name LIKE '_site_transient_twitchpress_channel_status_line%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_channel_status%' OR option_name LIKE '_site_transient_twitchpress_channel_status%'"
wp transient delete 'twitchpress_shortcode_channel_status_box'
wp transient delete 'twitchpress_channel_status_box'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_channel_status_box%' OR option_name LIKE '_site_transient_twitchpress_channel_status_box%'"
wp transient delete 'twitchpress_shortcode_streams_totalviewers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_channel_totalviewers%' OR option_name LIKE '_site_transient_twitchpress_channel_totalviewers%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_streams_totalviewers%' OR option_name LIKE '_site_transient_twitchpress_streams_totalviewers%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_stream_data%' OR option_name LIKE '_site_transient_twitchpress_stream_data%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_get_bits_leaderboard%' OR option_name LIKE '_site_transient_twitchpress_get_bits_leaderboard%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_streamlabs_oauthstate_%' OR option_name LIKE '_site_transient_twitchpress_streamlabs_oauthstate_%'"
wp transient delete 'twitchpress_streamlabs_token_request_response'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_twitchpress_streamlabs_%' OR option_name LIKE '_site_transient_twitchpress_streamlabs_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bugnet_log_%' OR option_name LIKE '_site_transient_bugnet_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'twitchpress_sync_feed_to_wp'
wp cron event delete 'twitchpress_plugin_background_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_logo_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_logo_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_logo_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_logo_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_avatar_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_logo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_logo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_logo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_logo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_bot_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_bot_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_bot_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_bot_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_bot_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_bot_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_bot_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_bot_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_auth_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_bot_auth_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_bot_auth_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_bot_auth_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_bot_auth_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_bot_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_bot_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_bot_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_bot_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_token_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_token_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_token_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_token_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_token_refresh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_bot_token_refresh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_bot_token_refresh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_bot_token_refresh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_bot_token_refresh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_sub_plan_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_sub_plan_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_sub_plan_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_sub_plan_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_bot_sub_plan_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_bot_sub_plan_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_bot_sub_plan_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_bot_sub_plan_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_sync_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_sync_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_sync_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_sync_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_sub_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_sub_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_sub_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_sub_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_sub_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_sub_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_sub_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_sub_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_sub_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_sub_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_sub_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_sub_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_sub_plan_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_sub_plan_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_sub_plan_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_sub_plan_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_created_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_created_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_created_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_created_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_following_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_following_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_following_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_following_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_channel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_twitch_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_gate_minimum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_gate_minimum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_gate_minimum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_gate_minimum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitch_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitch_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitch_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitch_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_sub_plan_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_sub_plan_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_sub_plan_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_sub_plan_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_substatus_mainchannel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_substatus_mainchannel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_substatus_mainchannel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_substatus_mainchannel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_follower_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_follower_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_follower_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_follower_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_allapi_access_token_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_allapi_access_token_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_allapi_access_token_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_allapi_access_token_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_allapi_refresh_token_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_allapi_refresh_token_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_allapi_refresh_token_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_allapi_refresh_token_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_allapi_token_lifetime%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_allapi_token_lifetime%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_allapi_token_lifetime%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_allapi_token_lifetime%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_allapi_token_created_at_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_allapi_token_created_at_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_allapi_token_created_at_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_allapi_token_created_at_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'twitchpress_allapi_scope_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'twitchpress_allapi_scope_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'twitchpress_allapi_scope_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'twitchpress_allapi_scope_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires_in '"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires_in '"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires_in '"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires_in '"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_streamlabs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_streamlabs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_streamlabs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_streamlabs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_streamlabs_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_streamlabs_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_streamlabs_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_streamlabs_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_streamlabs_expires_in '"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_streamlabs_expires_in '"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_streamlabs_expires_in '"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_streamlabs_expires_in '"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_streamlabs_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_streamlabs_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_streamlabs_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_streamlabs_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitchpress_streamlabs_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitchpress_streamlabs_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitchpress_streamlabs_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitchpress_streamlabs_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'streamlabs_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'streamlabs_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'streamlabs_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'streamlabs_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'streamlabs_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'streamlabs_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'streamlabs_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'streamlabs_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'streamlabs_points_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'streamlabs_points_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'streamlabs_points_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'streamlabs_points_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'streamlabs_points_time_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'streamlabs_points_time_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'streamlabs_points_time_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'streamlabs_points_time_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'streamlabs_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'streamlabs_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'streamlabs_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'streamlabs_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_giveaway_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_giveaway_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_giveaway_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_giveaway_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_giveaway_twitch_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_giveaway_twitch_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_giveaway_twitch_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_giveaway_twitch_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_giveaway_closure_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_giveaway_closure_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_giveaway_closure_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_giveaway_closure_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_giveaway_winner_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_giveaway_winner_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_giveaway_winner_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_giveaway_winner_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_giveaway_timer_start_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_giveaway_timer_start_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_giveaway_timer_start_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_giveaway_timer_start_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_giveaway_multiplier_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_giveaway_multiplier_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_giveaway_multiplier_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_giveaway_multiplier_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_webhooks_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_webhooks_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_webhooks_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_webhooks_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_webhooks_action_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_webhooks_action_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_webhooks_action_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_webhooks_action_one'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_webhooks_action_two'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_webhooks_action_two'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_webhooks_action_two'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_webhooks_action_two'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitchpress_post_webhooks_action_three'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitchpress_post_webhooks_action_three'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitchpress_post_webhooks_action_three'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitchpress_post_webhooks_action_three'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role'"
