#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpil_enable_ai_batch_processing'
wp option delete 'wpil_oai_insufficient_quota_error'
wp option delete 'wpil_open_ai_key_decoding_error'
wp option delete 'wpil_ai_token_decoding_error'
wp option delete 'wpil_oai_completed_batch_data'
wp option delete 'wpil_oai_batch_data'
wp option delete 'wpil_is_free_ai_key'
wp option delete 'wpil_version_check_update'
wp option delete 'wpil_disable_tawkto_widget'
wp option delete 'wpil_js_open_new_tabs'
wp option delete 'wpil_open_all_internal_new_tab'
wp option delete 'wpil_open_all_external_new_tab'
wp option delete 'wpil_disable_click_tracking'
wp option delete 'wpil_track_all_element_clicks'
wp option delete 'wpil_free_install_date'
wp option delete 'wpil_free_update_count'
wp option delete 'wpil_selected_language'
wp option delete 'wpil_fresh_install'
wp option delete 'wpil_site_db_version'
wp option delete 'wpil_term_index_cleanup'
wp option delete 'wpil_delete_all_data'
wp option delete 'wpil_wizard_settings_selected'
wp option delete 'wpil_wizard_import_autolink_rules'
wp option delete 'wpil_ignore_pages_completely'
wp option delete 'wpil_open_ai_api_key'
wp option delete 'wpil_wizard_start_time'
wp option delete 'wpil_show_expanded_suggestion_details'
wp option delete 'wpil_delete_old_click_data'
wp option delete 'wpil_disable_click_tracking_info_gathering'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'wpil_scan_last_plugin_version'
wp option delete 'oxy_meta_keys_prefixed'
wp option delete 'wpil_suggestion_wp_recipe_fields'
wp option delete 'wpil_email_notification_record'
wp option delete 'wpil_email_notification_frequency'
wp option delete 'wpil_error_reset_run'
wp option delete 'wpil_error_check_links_cron'
wp option delete 'wpil_error_post_process'
wp option delete 'wpil_error_cron_toggle'
wp option delete 'wpil_error_scan_toggle'
wp option delete 'wpil_disable_broken_link_cron_check'
wp option delete 'wpil_has_run_initial_scan'
wp option delete 'wpil_scan_last_run_time'
wp option delete 'wpil_include_post_meta_in_support_export'
wp option delete 'wpil_ignore_links'
wp option delete 'wpil_max_links_per_post'
wp option delete 'wpil_max_inbound_links_per_post'
wp option delete 'wpil_filter_staging_url'
wp option delete 'wpil_insert_links_as_relative'
wp option delete 'wpil_live_site_url'
wp option delete 'wpil_staging_site_url'
wp option delete 'wpil_use_seo_titles'
wp option delete 'wpil_disable_acf'
wp option delete 'wpil_ignore_orphaned_posts'
wp option delete 'wpil_2_term_types'
wp option delete 'wpil_option_update_reporting_data_on_save'
wp option delete 'wpil_max_linking_age'
wp option delete 'wpil_2_report_last_updated'
wp option delete 'wpil_show_all_links'
wp option delete 'wpil_enable_tours'
wp option delete 'wpil_gsc_app_authorized'
wp option delete 'wpil_ai_access_token'
wp option delete 'wpil_ai_access_user_id'
wp option delete 'wpil_ai_access_user_email'
wp option delete 'wpil_ai_access_authorized'
wp option delete 'wpil_gsc_profile_not_easily_found'
wp option delete 'wpil_gsc_processed_profiles'
wp option delete 'wpil_current_gsc_process_profile'
wp option delete 'wpil_gsc_custom_config'
wp option delete 'wpil_gsc_auth_method'
wp option delete 'wpil_gsc_remote_credentials'
wp option delete 'wpil_2_ignore_words'
wp option delete 'wpil_2_post_types'
wp option delete 'wpil_suggestion_limited_post_types'
wp option delete 'wpil_suggestion_anchor_max_size'
wp option delete 'wpil_suggestion_anchor_min_size'
wp option delete 'wpil_2_post_statuses'
wp option delete 'wpil_domains_marked_as_internal'
wp option delete 'wpil_process_these_acf_fields'
wp option delete 'wpil_custom_fields_to_process'
wp option delete 'wpil_acf_post_reference_fields'
wp option delete 'wpil_option_suggestion_batch_size'
wp option delete 'wpil_available_target_keyword_sources'
wp option delete 'wpil_skip_sentences'
wp option delete 'wpil_generate_quick_links'
wp option delete 'wpil_max_suggestion_count'
wp option delete 'wpil_ignore_orphaned_posts_by_category'
wp option delete 'wpil_dont_show_ignored_posts'
wp option delete 'wpil_ignore_sitemap_posts'
wp option delete 'wpil_suggest_to_outbound_posts'
wp option delete 'wpil_count_related_post_links'
wp option delete 'wpil_ignore_latest_posts'
wp option delete 'wpil_update_reusable_block_links'
wp option delete 'wpil_show_comment_links'
wp option delete 'wpil_content_formatting_level'
wp option delete 'wpil_override_global_post_during_scan'
wp option delete 'wpil_optimize_link_scan_for_speed'
wp option delete 'wpil_use_link_data_table'
wp option delete 'wpil_ignore_tags_from_linking'
wp option delete 'wpil_ignore_elementor_from_linking'
wp option delete 'wpil_select_ai_provider'
wp option delete 'wpil_chat_gpt_api'
wp option delete 'wpil_ai_suggestion_score_active'
wp option delete 'wpil_suggestion_relatedness_threshold'
wp option delete 'wpil_sitemap_embedding_relatedness_threshold'
wp option delete 'wpil_selected_ai_batch_processes'
wp option delete 'wpil_ai_generated_keyword_max_count'
wp option delete 'wpil_ai_embedding_dimension_count'
wp option delete 'wpil_ai_batch_processing_limits'
wp option delete 'wpil_use_ai_suggestions'
wp option delete 'wpil_disable_ai_anchor_building'
wp option delete 'wpil_restrict_to_top_ai_suggestions'
wp option delete 'wpil_update_post_edit_date'
wp option delete 'wpil_remove_noindex_post_suggestions'
wp option delete 'wpil_force_https_links'
wp option delete 'wpil_use_ugly_permalinks'
wp option delete 'wpil_clear_cdn_link_delete'
wp option delete 'wpil_object_cache_flush'
wp option delete 'wpil_optimize_option_table'
wp option delete 'wpil_update_post_after_action'
wp option delete 'wpil_get_partial_titles'
wp option delete 'wpil_search_console_data'
wp option delete 'wpil_autotag_gsc_keywords'
wp option delete 'wpil_autotag_gsc_keyword_basis'
wp option delete 'wpil_autotag_gsc_keyword_count'
wp option delete 'wpil_selected_target_keyword_sources'
wp option delete 'wpil_selected_post_content_target_keyword_sources'
wp option delete 'wpil_delete_link_inner_html'
wp option delete 'wpil_delete_links_to_post_on_delete'
wp option delete 'wpil_full_html_suggestions'
wp option delete 'wpil_limit_suggestions_to_post_types'
wp option delete 'wpil_max_suggestion_post_count'
wp option delete 'wpil_force_keyword_exact_matches_word_limit'
wp option delete 'wpil_broken_links_to_ignore'
wp option delete 'wpil_related_post_links_to_ignore'
wp option delete 'wpil_ignore_elements_by_class'
wp option delete 'wpil_ignore_shortcodes_by_name'
wp option delete 'wpil_ignore_linking_roles'
wp option delete 'wpil_marked_as_external'
wp option delete 'wpil_post_slug_for_suggestions'
wp option delete 'wpil_external_site_use_json_api'
wp option delete 'wpil_ignore_acf_fields'
wp option delete 'wpil_ignore_small_acf_text_fields'
wp option delete 'wpil_ignore_click_links'
wp option delete 'wpil_testing_mode'
wp option delete 'wpil_disable_ai_suggestions_cron'
wp option delete 'wpil_ai_max_processing_age'
wp option delete 'wpil_has_run_installation_wizard'
wp option delete 'wpil_email_notifications_enabled'
wp option delete 'wpil_enable_telemetry'
wp option delete 'wpil_remote_dashboard'
wp option delete 'edd_settings'
wp option delete 'wpil_make_suggestion_filtering_persistent'
wp option delete 'wpil_prevent_two_way_linking'
wp option delete 'wpil_only_match_target_keywords'
wp option delete 'wpil_link_to_yoast_cornerstone'
wp option delete 'wpil_partial_title_word_count'
wp option delete 'wpil_partial_title_split_char'
wp option delete 'wpil_disable_search_update'
wp option delete 'wpil_target_keyword_processing_data'
wp option delete 'wpil_keyword_reset_last_run_time'
wp option delete 'wpil_keyword_query_dates'
wp option delete 'wpil_has_dismissed_telemetry_notice'
wp option delete 'wpil_2_ignore_numbers'
wp option delete 'wpil_ignore_categories'
wp option delete 'wpil_links_to_ignore'
wp option delete 'wpil_2_debug_mode'
wp option delete 'wpil_clear_error_checker_process'

# Delete Transients
wp transient delete 'wpil_doing_ai_data_download'
wp transient delete 'wpil_ai_content_estimate_post_ids'
wp transient delete 'wpil_ai_content_estimate_post_id_count'
wp transient delete 'wpil_ai_content_estimate_cost'
wp transient delete 'wpil_queued_up_ai_sentences'
wp transient delete 'wpil_last_embedding_index_lock'
wp transient delete 'wpil_chunked_ai_process_posts'
wp transient delete 'wpil_oai_batch_process_delay'
wp transient delete 'wpil_ai_credit_balance'
wp transient delete 'wpil_user_ai_subscription'
wp transient delete 'wpil_clear_exports_folder'
wp transient delete 'wpil_ignore_pages_completely'
wp transient delete 'wpil_loading_progress_tracker'
wp transient delete 'wpil_wizard_has_completed'
wp transient delete 'wpil_wizard_inserting_autolinks'
wp transient delete 'wpil_doing_ajax_autolinks'
wp transient delete 'wpil_transients_enabled'
wp transient delete 'wpil_site_ip_address'
wp transient delete 'wpil_ignore_links'
wp transient delete 'wpil_thirsty_affiliate_links'
wp transient delete 'wpil_redirected_post_ids'
wp transient delete 'wpil_redirected_post_urls'
wp transient delete 'wpil_total_process_post_count'
wp transient delete 'wpil_refresh_all_stat_not_update_count'
wp transient delete 'wpil_refresh_all_stat_post_not_update'
wp transient delete 'wpil_refresh_all_stat_term_not_update'
wp transient delete 'wpil_resume_scan_data'
wp transient delete 'wpil_stored_unprocessed_link_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_stored_post_internal_inbound_links_%' OR option_name LIKE '_site_transient_wpil_stored_post_internal_inbound_links_%'"
wp transient delete 'wpil_nav_link_cache'
wp transient delete 'wpil_gsc_access_status_message'
wp transient delete 'wpil_domains_marked_as_internal'
wp transient delete 'wpil_process_these_acf_fields'
wp transient delete 'wpil_custom_fields_to_process'
wp transient delete 'wpil_acf_post_reference_fields'
wp transient delete 'wpil_clear_error_checker_message'
wp transient delete 'wpil_database_creation_message'
wp transient delete 'wpil_database_update_message'
wp transient delete 'wpil_available_related_post_terms'
wp transient delete 'wpil_ignore_sitemap_posts'
wp transient delete 'wpil_suggest_to_outbound_posts'
wp transient delete 'wpil_broken_links_to_ignore'
wp transient delete 'wpil_related_post_links_to_ignore'
wp transient delete 'wpil_ignore_elements_by_class'
wp transient delete 'wpil_ignore_shortcodes_by_name'
wp transient delete 'wpil_ignore_acf_fields'
wp transient delete 'wpil_ignore_click_links'
wp transient delete 'wpil_redirected_hidden_posts'
wp transient delete 'wpil_ai_suggestion_post_process_cron_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_post_suggestions_%' OR option_name LIKE '_site_transient_wpil_post_suggestions_%'"
wp transient delete 'wpil_chat_gpt_api_waiter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_outbound_post_links%' OR option_name LIKE '_site_transient_wpil_outbound_post_links%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_title_word_ids_%' OR option_name LIKE '_site_transient_wpil_title_word_ids_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_inbound_title_words_%' OR option_name LIKE '_site_transient_wpil_inbound_title_words_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_ai_suggested_sentences%' OR option_name LIKE '_site_transient_wpil_ai_suggested_sentences%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_external_post_link_index_%' OR option_name LIKE '_site_transient_wpil_external_post_link_index_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_processed_phrases_%' OR option_name LIKE '_site_transient_wpil_processed_phrases_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpil_post_same_categories_%' OR option_name LIKE '_site_transient_wpil_post_same_categories_%'"
wp transient delete 'wpil_link_report_order'
wp transient delete 'wpil_gsc_query_completed'
wp transient delete 'wpil_gsc_query_row'
wp transient delete 'wpil_gsc_query_row_increment'
wp transient delete 'wpil_autocheck_post_data'
wp transient delete 'wpil_target_keyword_yoast_ids'
wp transient delete 'wpil_target_keyword_rank_math_ids'
wp transient delete 'wpil_target_keyword_aioseo_ids'
wp transient delete 'wpil_target_keyword_seopress_ids'
wp transient delete 'wpil_target_keyword_squirrly_ids'
wp transient delete 'wpil_target_keyword_post_content_ids'
wp transient delete 'wpil_target_keyword_ai_generated_ids'
wp transient delete 'wpil_estimated_target_keyword_post_count'
wp transient delete 'wpil_table_item_count_reset_message'
wp transient delete 'wpil_user_data_delete_message'

# Clear Cron Jobs
wp cron event delete 'wpil_ai_batch_process_cron'
wp cron event delete 'wpil_scheduled_click_data_delete'
wp cron event delete 'wpil_delete_old_click_data'
wp cron event delete 'wpil_email_cron'
wp cron event delete 'wpil_broken_link_check_cron'
wp cron event delete 'wpil_search_console_update'
wp cron event delete 'wpil_search_console_update_step'
wp cron event delete 'wpil_telemetry_cleanup_cron'
wp cron event delete 'wpil_telemetry_process_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_dismissed_popups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_dismissed_popups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_dismissed_popups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_dismissed_popups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_hide_explain_page_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_hide_explain_page_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_hide_explain_page_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_hide_explain_page_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_hide_explain_page_completely'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_hide_explain_page_completely'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_hide_explain_page_completely'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_hide_explain_page_completely'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_review_left'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_review_left'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_review_left'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_review_left'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_review_notice_perm_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_review_notice_perm_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_review_notice_perm_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_review_notice_perm_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_review_notice_temp_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_review_notice_temp_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_review_notice_temp_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_review_notice_temp_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_sync_report3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_sync_report3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_sync_report3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_sync_report3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_dismissed_ai_notice_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_dismissed_ai_notice_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_dismissed_ai_notice_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_dismissed_ai_notice_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'report_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'report_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'report_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'report_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cornerstone_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cornerstone_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cornerstone_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cornerstone_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdlr-core-page-builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdlr-core-page-builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdlr-core-page-builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdlr-core-page-builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-post-hide-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%builder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_sync_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_sync_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_sync_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_sync_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_updated_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilderCleanData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilderCleanData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilderCleanData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilderCleanData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_sync_report2_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_sync_report2_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_sync_report2_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_sync_report2_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_filter_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_filter_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_filter_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_filter_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_landing_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_landing_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_landing_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_landing_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tve_updated_post_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tve_updated_post_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tve_updated_post_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tve_updated_post_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_popup_shown_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_popup_shown_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_popup_shown_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_popup_shown_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_inbound_internal_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_inbound_internal_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_inbound_internal_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_inbound_internal_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_inbound_internal_count_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_inbound_internal_count_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_inbound_internal_count_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_inbound_internal_count_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_outbound_internal_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_outbound_internal_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_outbound_internal_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_outbound_internal_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_outbound_internal_count_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_outbound_internal_count_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_outbound_internal_count_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_outbound_internal_count_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_outbound_external_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_outbound_external_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_outbound_external_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_outbound_external_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_links_outbound_external_count_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_links_outbound_external_count_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_links_outbound_external_count_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_links_outbound_external_count_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_allow_multiple_editor_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_allow_multiple_editor_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_allow_multiple_editor_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_allow_multiple_editor_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_ai_access_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_ai_access_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_ai_access_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_ai_access_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_ai_access_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_ai_access_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_ai_access_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_ai_access_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_persistent_filter_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_persistent_filter_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_persistent_filter_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_persistent_filter_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_disable_load_with_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_disable_load_with_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_disable_load_with_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_disable_load_with_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'target_keyword_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'target_keyword_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'target_keyword_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'target_keyword_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_inbound_target_keyword_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_inbound_target_keyword_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_inbound_target_keyword_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_inbound_target_keyword_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_inbound_show_link_stats_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_inbound_show_link_stats_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_inbound_show_link_stats_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_inbound_show_link_stats_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_telemetry_user_event_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_telemetry_user_event_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_telemetry_user_event_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_telemetry_user_event_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_telemetry_user_event_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_telemetry_user_event_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_telemetry_user_event_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_telemetry_user_event_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_telemetry_user_event_notice_last_display_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_telemetry_user_event_notice_last_display_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_telemetry_user_event_notice_last_display_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_telemetry_user_event_notice_last_display_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application_passwords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_tour_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_tour_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_tour_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_tour_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_tour_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_tour_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_tour_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_tour_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_tour_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_tour_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_tour_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_tour_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpil_same_category_selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpil_same_category_selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpil_same_category_selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpil_same_category_selected'"
