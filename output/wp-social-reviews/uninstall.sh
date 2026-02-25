#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wp_social_ninja_version'
wp option delete 'wpsr_statuses'
wp option delete '__wpsr_license'
wp option delete 'wpsr_facebook_feed_global_settings'
wp option delete 'wpsr_instagram_global_settings'
wp option delete 'wpsr_instagram_verification_configs'
wp option delete 'wpsr_reviews_facebook_settings'
wp option delete 'wpsr_youtube_global_settings'
wp option delete '_wpsn_ids'
wp option delete 'advance_settings'
wp option delete 'last_fetched_tripadvisor_review_id'
wp option delete 'wpsr_reviews_google_connected_accounts'
wp option delete 'wpsr_reviews_google_locations_list'
wp option delete 'wpsr_reviews_facebook_pages_list'
wp option delete 'wpsr_available_valid_platforms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_info'"
wp option delete 'wpsr_twitter_cards_data'
wp option delete 'wpsr_global_settings'
wp option delete 'wpsr_optimize_images_table_status'
wp option delete 'wpsr_errors'
wp option delete 'wpsr_global_shoppable_settings'
wp option delete 'wpsr_twitter_verification_configs'
wp option delete 'wpsr_youtube_verification_configs'
wp option delete 'wpsr_fluent_forms_global_settings'
wp option delete 'wpsr_last_m_run'
wp option delete 'wpsr_onboarding_sessions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_verification_configs'"
wp option delete 'wpsr_facebook_feed_connected_sources_config'
wp option delete 'wpsr_facebook_feed_verification_configs'
wp option delete 'wpsr_facebook_feed_authorized_sources'
wp option delete 'wpsr_instagram_authorized_business_accounts_list'
wp option delete 'wpsr_twitter_global_settings'
wp option delete 'wpsr_tiktok_connected_sources_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_local_avatars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_local_covers'"
wp option delete 'wpsr_reviews_facebook_business_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_revoke_platform_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_sources_config'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wpsr_reviews_airbnb_business_info'
wp option delete 'last_fetched_reviews_id'
wp option delete 'wpsr_reviews_aliexpress_business_info'
wp option delete 'wpsr_reviews_google_verification_configs'
wp option delete 'wpsr_google_global_settings'
wp option delete 'wpsr_reviews_google_business_info'

# Clear Cron Jobs
wp cron event delete 'wpsr_cron_job'
wp cron event delete 'wpsr_do_email_report_scheduled_tasks'
wp cron event delete 'wpsr_scheduled_twicedaily'
wp cron event delete 'wpsr_scheduled_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsr-settings-woo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsr-settings-woo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsr-settings-woo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsr-settings-woo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsr_driver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsr_driver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsr_driver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsr_driver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsn_elementor_ids'"
