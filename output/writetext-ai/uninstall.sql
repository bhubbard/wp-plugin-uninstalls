-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtai_api_token', 'wtai_api_token_time', 'wtai_api_token_last_checked', 'wtai_api_base_url', 'wtai_site_uid', 'wtai_api_token_old', 'wtai_api_token_expired', 'wtai_api_token_retry_attempted', 'wtai_api_token_retry_attempted_old', 'wtai_installation_step', 'wtai_installation_source', 'wtai_force_version_update', 'wtai_latest_version_outdated', 'wtai_latest_version_available', 'wtai_latest_version_message', 'wtai_filters_rules_etag', 'wtai_filters_rules_last_date_checked', 'wtai_filters_rules_value', 'wtai_installation_style_and_tone_reset', 'wtai_etag_credit_key', 'wtai_etag_credit_key_lasttime', 'wtai_credits_count', 'wtai_new_product_start_date', 'wtai_installation_tones', 'wtai_installation_audiences', 'wtai_installation_styles', 'wtai_email_sent_for_daily_cron', 'wtai_daily_auto_cron_triggered', 'wtai_auto_transfer_queue_details', 'wtai_last_email_sent_time', 'wtai_daily_auto_transfer_last_activity_time', 'wtai_daily_auto_transfer_last_activity', 'wtai_current_queue_number_for_bulk_transfer', 'wtai_enable_product_research', 'wtai_auto_transfer_user', 'wtai_rest_api_key_id', 'wtai_auto_transfer_time', 'wtai_userrole', 'wtai_userrole_multisite', 'wtai_transient_wc_custom_pa', 'wtai_installation_source_updated', 'wtai_seo_activated_from_wtai_setup', 'wtai_seo_activated_from_wtai_setup_status', 'wtai_installation_step_1_loaded', 'wtai_product_attributes_initial_check_completed', 'wtai_installation_product_attr', 'wtai_v2_new_install_flag', 'wtai_welcome_v2_seen', 'wtai_plugin_updated_flag', 'wtai_is_grid_visited_for_the_first_time');
DELETE FROM wp_options WHERE option_name IN ('wtai_rest_api_key', 'wtai_rest_api_secret', 'wtai_bulk_generate_request', 'wtai_bulk_generate_request_done', 'wtai_bulk_generate_products_done', 'wtai_bulk_transfer_users_done', 'wtai_bulk_generate_done_initiated', 'wtai_bulk_product_ids', 'wtai_bulk_generate_transfers', 'wtai_localized_countries_enabled', 'wtai_localized_countries', 'wtai_template_block_ids', 'wtai_installation_tone', 'wtai_installation_etag_tones', 'wtai_installation_etag_styles', 'wtai_installation_options', 'wtai_installation_etag_global_rules', 'wtai_installation_global_rules', 'wtai_installation_product_description_min', 'wtai_installation_product_description_max', 'wtai_installation_product_excerpt_min', 'wtai_installation_product_excerpt_max', 'wtai_installation_category_description_min', 'wtai_installation_category_description_max', 'wtai_keywordanalysis_location', 'wtai_keywordanalysis_location_time', 'wtai_no_of_cluster_based_pipeline', 'wtai_no_of_cluster_based_pipeline_category', 'wtai_trigger_action', 'wtai_trigger_action_ranking_position', 'wtai_trigger_action_days', 'wtai_automatic_text_optimization', 'wtai_ko_product_text_fields', 'wtai_ko_category_text_fields', 'wtai_bulk_generate_transfers_v2', 'wtai_auto_transfer_email_sending_lock');
DELETE FROM wp_options WHERE option_name LIKE '%_etag';
DELETE FROM wp_options WHERE option_name LIKE '%_global_settings_last_date_checked';
DELETE FROM wp_options WHERE option_name LIKE '%_value';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_installation_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_bulk_generate_transfers_v2_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_ranking_position_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_days_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_plugin_updated_flag_%';
DELETE FROM wp_options WHERE option_name LIKE 'wtai_plugin_new_install_flag_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'wtai_product_attribute_preference', 'wtai_otherproductdetails', 'first_name', 'last_name', '_wp_attachment_image_alt', 'wtai_generate_date', 'wtai_review', 'thumbnail_id', 'wtai_image_last_modified', 'wtai_transfer_date', 'wtai_category_representative_products', 'wtai_othercategorydetails_enabled', 'wtai_othercategorydetails', 'wtai_keyword_location_code', 'wtai_last_activity_date', 'wtai_last_activity', 'wtai_bulk_queue_id', 'wtai_additional_prompt', 'rank_math_twitter_use_facebook', '_aioseo_title', '_aioseo_description', '_aioseo_og_description', 'rank_math_title', 'rank_math_description', 'rank_math_facebook_description', 'wtai_product_reference_id', '_product_image_gallery', 'wtai_keyword_drawer_display_status', 'wtai_do_not_show_image_invalid_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'wtai_product_attribute_preference', 'wtai_otherproductdetails', 'first_name', 'last_name', '_wp_attachment_image_alt', 'wtai_generate_date', 'wtai_review', 'thumbnail_id', 'wtai_image_last_modified', 'wtai_transfer_date', 'wtai_category_representative_products', 'wtai_othercategorydetails_enabled', 'wtai_othercategorydetails', 'wtai_keyword_location_code', 'wtai_last_activity_date', 'wtai_last_activity', 'wtai_bulk_queue_id', 'wtai_additional_prompt', 'rank_math_twitter_use_facebook', '_aioseo_title', '_aioseo_description', '_aioseo_og_description', 'rank_math_title', 'rank_math_description', 'rank_math_facebook_description', 'wtai_product_reference_id', '_product_image_gallery', 'wtai_keyword_drawer_display_status', 'wtai_do_not_show_image_invalid_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'wtai_product_attribute_preference', 'wtai_otherproductdetails', 'first_name', 'last_name', '_wp_attachment_image_alt', 'wtai_generate_date', 'wtai_review', 'thumbnail_id', 'wtai_image_last_modified', 'wtai_transfer_date', 'wtai_category_representative_products', 'wtai_othercategorydetails_enabled', 'wtai_othercategorydetails', 'wtai_keyword_location_code', 'wtai_last_activity_date', 'wtai_last_activity', 'wtai_bulk_queue_id', 'wtai_additional_prompt', 'rank_math_twitter_use_facebook', '_aioseo_title', '_aioseo_description', '_aioseo_og_description', 'rank_math_title', 'rank_math_description', 'rank_math_facebook_description', 'wtai_product_reference_id', '_product_image_gallery', 'wtai_keyword_drawer_display_status', 'wtai_do_not_show_image_invalid_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'wtai_product_attribute_preference', 'wtai_otherproductdetails', 'first_name', 'last_name', '_wp_attachment_image_alt', 'wtai_generate_date', 'wtai_review', 'thumbnail_id', 'wtai_image_last_modified', 'wtai_transfer_date', 'wtai_category_representative_products', 'wtai_othercategorydetails_enabled', 'wtai_othercategorydetails', 'wtai_keyword_location_code', 'wtai_last_activity_date', 'wtai_last_activity', 'wtai_bulk_queue_id', 'wtai_additional_prompt', 'rank_math_twitter_use_facebook', '_aioseo_title', '_aioseo_description', '_aioseo_og_description', 'rank_math_title', 'rank_math_description', 'rank_math_facebook_description', 'wtai_product_reference_id', '_product_image_gallery', 'wtai_keyword_drawer_display_status', 'wtai_do_not_show_image_invalid_popup');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_last_activity_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_last_activity_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_last_activity_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_last_activity_date_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_last_activity_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_last_activity_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_last_activity_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_last_activity_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%';

