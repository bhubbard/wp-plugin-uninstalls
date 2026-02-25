#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_settings_v5'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_force_tracked'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'wpins_block_notice'
wp option delete 'wpins_collect_email'
wp option delete 'wpins_admin_emails'
wp option delete 'wpdeveloper_plugins_data'
wp option delete 'wpsp_do_activation_redirect'
wp option delete 'wpsp_settings'
wp option delete 'wpsp_version'
wp option delete 'wpscp_options'
wp option delete 'wpsp_data_migration_3_to_4'
wp option delete 'wpscp_notify_author_is_sent_review'
wp option delete 'wpscp_notify_author_role_sent_review'
wp option delete 'wpscp_notify_author_username_sent_review'
wp option delete 'wpscp_notify_author_email_sent_review'
wp option delete 'wpscp_notify_author_post_is_rejected'
wp option delete 'wpscp_notify_author_post_is_schedule'
wp option delete 'wpscp_notify_author_post_schedule_role'
wp option delete 'wpscp_notify_author_post_schedule_username'
wp option delete 'wpscp_notify_author_post_schedule_email'
wp option delete 'wpscp_notify_author_schedule_post_is_publish'
wp option delete 'wpscp_notify_author_post_is_publish'
wp option delete 'wpscp_facebook_account'
wp option delete 'wpsp_facebook_integration_status'
wp option delete 'wpscp_linkedin_account'
wp option delete 'wpsp_linkedin_integration_status'
wp option delete 'wpscp_twitter_account'
wp option delete 'wpsp_twitter_integration_status'
wp option delete 'wpscp_pinterest_account'
wp option delete 'wpsp_pinterest_integration_status'
wp option delete 'wpscp_pro_fb_meta_head_support'
wp option delete 'wpscp_pro_fb_content_type'
wp option delete 'wpscp_pro_fb_template_category_tags_support'
wp option delete 'wpscp_pro_fb_content_source'
wp option delete 'wpscp_pro_facebook_template_structure'
wp option delete 'wpscp_pro_facebook_status_limit'
wp option delete 'wpscp_twitter_template_structure'
wp option delete 'wpscp_twitter_template_category_tags_support'
wp option delete 'wpscp_twitter_template_thumbnail'
wp option delete 'wpscp_twitter_content_source'
wp option delete 'wpscp_twitter_tweet_limit'
wp option delete 'wpscp_pro_linkedin_content_type'
wp option delete 'wpscp_pro_liinkedin_template_category_tags_support'
wp option delete 'wpscp_pro_linkedin_content_source'
wp option delete 'wpscp_pro_linkedin_template_structure'
wp option delete 'wpscp_pro_linkedin_status_limit'
wp option delete 'wpscp_pro_pinterest_template_settings'
wp option delete 'wpsp_data_migration_allow_categories'
wp option delete 'wpsp_data_migration_4_to_5'
wp option delete 'wpsp_activated_pro_once'
wp option delete 'wp-scheduled-posts-pro-license-key'
wp option delete '_site_transient_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_sl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_sl_failed_http_%'"

# Delete Transients
wp transient delete 'wpsp_email_is_send_flag'
wp transient delete 'wpsp_social_auth_code'
wp transient delete 'wpnotice_priority_time_expired'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'put_do_weekly_action'
wp cron event delete 'WpScp_Facebook_post'
wp cron event delete 'wpsp_google_business_token_refresh'
wp cron event delete 'WpScp_Instagram_post'
wp cron event delete 'WpScp_linkedin_post'
wp cron event delete 'WpScp_Medium_post'
wp cron event delete 'WpScp_pinterest_post'
wp cron event delete 'wpsp_linkedin_reconnect_cron_event'
wp cron event delete 'WpScp_Threads_post'
wp cron event delete 'wpsp_twitter_post'
wp cron event delete 'wpsp_publish_future_post'
wp cron event delete 'wpsp_custom_social_template'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_custom_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_custom_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_custom_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_custom_templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_social_scheduling'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_social_scheduling'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_social_scheduling'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_social_scheduling'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpscp_pending_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpscp_pending_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpscp_pending_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpscp_pending_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscp_schedule_republish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscp_schedule_republish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscp_schedule_republish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscp_schedule_republish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpscp_el_pending_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpscp_el_pending_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpscp_el_pending_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpscp_el_pending_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_advance_schedule_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_advance_schedule_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_advance_schedule_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_advance_schedule_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_freedom30'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_freedom30'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_freedom30'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_freedom30'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_facebook_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_facebook_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_facebook_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_facebook_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_instagram_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_instagram_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_instagram_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_instagram_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twitter_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twitter_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twitter_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twitter_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_share_type_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_share_type_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_share_type_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_share_type_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pinterest_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pinterest_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pinterest_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pinterest_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medium_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medium_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medium_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medium_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_threads_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_threads_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_threads_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_threads_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_google_business_share_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_google_business_share_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_google_business_share_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_google_business_share_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_social_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_social_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_social_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_social_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscp_schedule_draft_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscp_schedule_draft_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscp_schedule_draft_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscp_schedule_draft_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_custom_social_share_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_custom_social_share_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_custom_social_share_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_custom_social_share_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_facebook_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_facebook_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_facebook_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_facebook_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_twitter_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_twitter_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_twitter_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_twitter_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_linkedin_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_linkedin_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_linkedin_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_linkedin_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_pinterest_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_pinterest_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_pinterest_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_pinterest_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_dont_share_socialmedia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_dont_share_socialmedia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_dont_share_socialmedia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_dont_share_socialmedia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_enable_custom_social_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_enable_custom_social_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_enable_custom_social_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_enable_custom_social_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_google_business_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_google_business_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_google_business_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_google_business_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_instagram_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_instagram_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_instagram_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_instagram_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_pinterest_board_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_pinterest_board_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_pinterest_board_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_pinterest_board_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_pinterest_section_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_pinterest_section_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_pinterest_section_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_pinterest_section_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpscppro_pinterestboardtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpscppro_pinterestboardtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpscppro_pinterestboardtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpscppro_pinterestboardtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_medium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_medium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_medium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_medium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_medium_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_medium_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_medium_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_medium_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_threads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_threads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_threads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_threads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsp_is_threads_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsp_is_threads_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsp_is_threads_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsp_is_threads_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpscppro_social_share_google_business'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpscppro_social_share_google_business'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpscppro_social_share_google_business'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpscppro_social_share_google_business'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prevent_future_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prevent_future_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prevent_future_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prevent_future_post'"
