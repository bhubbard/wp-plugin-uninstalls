-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wp_social_ninja_version', 'wpsr_statuses', '__wpsr_license', 'wpsr_facebook_feed_global_settings', 'wpsr_instagram_global_settings', 'wpsr_instagram_verification_configs', 'wpsr_reviews_facebook_settings', 'wpsr_youtube_global_settings', '_wpsn_ids', 'advance_settings', 'last_fetched_tripadvisor_review_id', 'wpsr_reviews_google_connected_accounts', 'wpsr_reviews_google_locations_list', 'wpsr_reviews_facebook_pages_list', 'wpsr_available_valid_platforms', 'wpsr_twitter_cards_data', 'wpsr_global_settings', 'wpsr_optimize_images_table_status', 'wpsr_errors', 'wpsr_global_shoppable_settings', 'wpsr_twitter_verification_configs', 'wpsr_youtube_verification_configs', 'wpsr_fluent_forms_global_settings', 'wpsr_last_m_run', 'wpsr_onboarding_sessions', 'wpsr_facebook_feed_connected_sources_config', 'wpsr_facebook_feed_verification_configs', 'wpsr_facebook_feed_authorized_sources', 'wpsr_instagram_authorized_business_accounts_list', 'wpsr_twitter_global_settings', 'wpsr_tiktok_connected_sources_config', 'wpsr_reviews_facebook_business_info', 'wpsr_reviews_airbnb_business_info', 'last_fetched_reviews_id', 'wpsr_reviews_aliexpress_business_info', 'wpsr_reviews_google_verification_configs', 'wpsr_google_global_settings', 'wpsr_reviews_google_business_info');
DELETE FROM wp_options WHERE option_name LIKE '%_business_info';
DELETE FROM wp_options WHERE option_name LIKE '%_global_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_verification_configs';
DELETE FROM wp_options WHERE option_name LIKE '%_local_avatars';
DELETE FROM wp_options WHERE option_name LIKE '%_local_covers';
DELETE FROM wp_options WHERE option_name LIKE '%_revoke_platform_data';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_sources_config';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsn_ids', 'ct_other_template', 'wpsr-settings-woo', '_wpsr_template_styles_config', '_wpsr_driver', '_wpsn_elementor_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsr_template_config', '_wpsn_ids', 'ct_other_template', 'wpsr-settings-woo', '_wpsr_template_styles_config', '_wpsr_driver', '_wpsn_elementor_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsn_ids', 'ct_other_template', 'wpsr-settings-woo', '_wpsr_template_styles_config', '_wpsr_driver', '_wpsn_elementor_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsn_ids', 'ct_other_template', 'wpsr-settings-woo', '_wpsr_template_styles_config', '_wpsr_driver', '_wpsn_elementor_ids');

