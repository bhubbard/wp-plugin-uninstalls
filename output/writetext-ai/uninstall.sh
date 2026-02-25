#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtai_api_token'
wp option delete 'wtai_api_token_time'
wp option delete 'wtai_api_token_last_checked'
wp option delete 'wtai_api_base_url'
wp option delete 'wtai_site_uid'
wp option delete 'wtai_api_token_old'
wp option delete 'wtai_api_token_expired'
wp option delete 'wtai_api_token_retry_attempted'
wp option delete 'wtai_api_token_retry_attempted_old'
wp option delete 'wtai_installation_step'
wp option delete 'wtai_installation_source'
wp option delete 'wtai_force_version_update'
wp option delete 'wtai_latest_version_outdated'
wp option delete 'wtai_latest_version_available'
wp option delete 'wtai_latest_version_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_etag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_settings_last_date_checked'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_value'"
wp option delete 'wtai_filters_rules_etag'
wp option delete 'wtai_filters_rules_last_date_checked'
wp option delete 'wtai_filters_rules_value'
wp option delete 'wtai_installation_style_and_tone_reset'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_installation_%'"
wp option delete 'wtai_etag_credit_key'
wp option delete 'wtai_etag_credit_key_lasttime'
wp option delete 'wtai_credits_count'
wp option delete 'wtai_new_product_start_date'
wp option delete 'wtai_installation_tones'
wp option delete 'wtai_installation_audiences'
wp option delete 'wtai_installation_styles'
wp option delete 'wtai_email_sent_for_daily_cron'
wp option delete 'wtai_daily_auto_cron_triggered'
wp option delete 'wtai_auto_transfer_queue_details'
wp option delete 'wtai_last_email_sent_time'
wp option delete 'wtai_daily_auto_transfer_last_activity_time'
wp option delete 'wtai_daily_auto_transfer_last_activity'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_bulk_generate_transfers_v2_%'"
wp option delete 'wtai_current_queue_number_for_bulk_transfer'
wp option delete 'wtai_enable_product_research'
wp option delete 'wtai_auto_transfer_user'
wp option delete 'wtai_rest_api_key_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_ranking_position_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_trigger_action_days_%'"
wp option delete 'wtai_auto_transfer_time'
wp option delete 'wtai_userrole'
wp option delete 'wtai_userrole_multisite'
wp option delete 'wtai_transient_wc_custom_pa'
wp option delete 'wtai_installation_source_updated'
wp option delete 'wtai_seo_activated_from_wtai_setup'
wp option delete 'wtai_seo_activated_from_wtai_setup_status'
wp option delete 'wtai_installation_step_1_loaded'
wp option delete 'wtai_product_attributes_initial_check_completed'
wp option delete 'wtai_installation_product_attr'
wp option delete 'wtai_v2_new_install_flag'
wp option delete 'wtai_welcome_v2_seen'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_plugin_updated_flag_%'"
wp option delete 'wtai_plugin_updated_flag'
wp option delete 'wtai_is_grid_visited_for_the_first_time'
wp option delete 'wtai_rest_api_key'
wp option delete 'wtai_rest_api_secret'
wp option delete 'wtai_bulk_generate_request'
wp option delete 'wtai_bulk_generate_request_done'
wp option delete 'wtai_bulk_generate_products_done'
wp option delete 'wtai_bulk_transfer_users_done'
wp option delete 'wtai_bulk_generate_done_initiated'
wp option delete 'wtai_bulk_product_ids'
wp option delete 'wtai_bulk_generate_transfers'
wp option delete 'wtai_localized_countries_enabled'
wp option delete 'wtai_localized_countries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wtai_plugin_new_install_flag_%'"
wp option delete 'wtai_template_block_ids'
wp option delete 'wtai_installation_tone'
wp option delete 'wtai_installation_etag_tones'
wp option delete 'wtai_installation_etag_styles'
wp option delete 'wtai_installation_options'
wp option delete 'wtai_installation_etag_global_rules'
wp option delete 'wtai_installation_global_rules'
wp option delete 'wtai_installation_product_description_min'
wp option delete 'wtai_installation_product_description_max'
wp option delete 'wtai_installation_product_excerpt_min'
wp option delete 'wtai_installation_product_excerpt_max'
wp option delete 'wtai_installation_category_description_min'
wp option delete 'wtai_installation_category_description_max'
wp option delete 'wtai_keywordanalysis_location'
wp option delete 'wtai_keywordanalysis_location_time'
wp option delete 'wtai_no_of_cluster_based_pipeline'
wp option delete 'wtai_no_of_cluster_based_pipeline_category'
wp option delete 'wtai_trigger_action'
wp option delete 'wtai_trigger_action_ranking_position'
wp option delete 'wtai_trigger_action_days'
wp option delete 'wtai_automatic_text_optimization'
wp option delete 'wtai_ko_product_text_fields'
wp option delete 'wtai_ko_category_text_fields'
wp option delete 'wtai_bulk_generate_transfers_v2'

# Delete Transients
wp transient delete 'wtai_auto_transfer_email_sending_lock'

# Clear Cron Jobs
wp cron event delete 'wtai_check_if_bulk_transfer_is_stucked'
wp cron event delete 'wtai_daily_auto_transfer_process_sync'
wp cron event delete 'wtai_daily_auto_transfer_process_retry_sync'
wp cron event delete 'wtai_daily_new_products_tagging_process_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_product_attribute_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_product_attribute_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_product_attribute_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_product_attribute_preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_otherproductdetails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_otherproductdetails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_otherproductdetails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_otherproductdetails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_generate_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_generate_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_generate_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_generate_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_image_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_image_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_image_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_image_last_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_transfer_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_transfer_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_transfer_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_transfer_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_category_representative_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_category_representative_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_category_representative_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_category_representative_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_othercategorydetails_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_othercategorydetails_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_othercategorydetails_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_othercategorydetails_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_othercategorydetails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_othercategorydetails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_othercategorydetails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_othercategorydetails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_keyword_location_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_keyword_location_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_keyword_location_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_keyword_location_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_last_activity_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_last_activity_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_last_activity_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_last_activity_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_bulk_queue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_bulk_queue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_bulk_queue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_bulk_queue_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_additional_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_additional_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_additional_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_additional_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_twitter_use_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_twitter_use_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_twitter_use_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_twitter_use_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_product_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_product_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_product_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_product_reference_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_last_activity_date_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_last_activity_date_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_last_activity_date_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_last_activity_date_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_last_activity_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_last_activity_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_last_activity_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_last_activity_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wtai_keyword_analysis_sort_filter_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_keyword_drawer_display_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_keyword_drawer_display_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_keyword_drawer_display_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_keyword_drawer_display_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wtai_do_not_show_image_invalid_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wtai_do_not_show_image_invalid_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wtai_do_not_show_image_invalid_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wtai_do_not_show_image_invalid_popup'"
