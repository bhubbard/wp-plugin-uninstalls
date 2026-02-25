#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style_version'"
wp option delete 'wpps_search_page_content_type'
wp option delete 'wp_predictive_search_just_confirm'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpps_search_exclude_%'"
wp option delete 'wpps_search_schedule_time_sync_data'
wp option delete 'wp_predictive_search_had_sync_posts_data'
wp option delete 'wp_predictive_search_synced_posts_data'
wp option delete 'wp_predictive_search_auto_synced_completed_time'
wp option delete 'wp_predictive_search_manual_synced_completed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_successed'"
wp option delete 'wp_predictive_search_auto_synced_relationships_successed'
wp option delete 'wpps_min_characters_message_dontshow'
wp option delete 'wpps_time_delay_message_dontshow'
wp option delete 'wpps_cache_timeout_message_dontshow'
wp option delete 'predictive_search_category_cache'
wp option delete 'wpps_search_box_text'
wp option delete 'wpps_search_lite_clean_on_deletion'
wp option delete 'wp_predictive_search_version'
wp option delete 'wp_predictive_search_just_installed'
wp option delete 'wpps_search_widget_template'
wp option delete 'wpps_search_show_catdropdown'
wp option delete 'wpps_search_in_taxonomy'
wp option delete 'wpps_search_show_image'
wp option delete 'wpps_search_show_desc'
wp option delete 'wpps_search_character_max'
wp option delete 'wpps_search_show_in_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_items'"
wp option delete 'wpps_blocks_unavailable_dismiss'
wp option delete 'wpps_search_is_debug'
wp option delete 'wpps_search_min_characters'
wp option delete 'wpps_search_delay_time'
wp option delete 'wpps_search_cache_timeout'
wp option delete 'wpps_search_focus_enable'
wp option delete 'wpps_search_focus_plugin'
wp option delete 'wpps_all_results_pages_settings'
wp option delete 'predictive_search_rebuild_cat_cache'
wp option delete 'wpps_search_category_cache_timeout'
wp option delete 'wpps_search_page_id'
wp option delete 'predictive_search_mode'
wp option delete 'predictive_search_description_source'
wp option delete 'wpps_search_remove_special_character'
wp option delete 'wpps_search_special_characters'
wp option delete 'wpps_search_replace_special_character'
wp option delete 'wpps_search_enable_google_analytic'
wp option delete 'wpps_search_google_analytic_id'
wp option delete 'wpps_search_google_analytic_query_parameter'
wp option delete 'wpps_search_allow_auto_sync_data'
wp option delete 'wp_predictive_search_auto_synced_full_data_successed'
wp option delete 'wp_predictive_search_auto_synced_posts_successed'
wp option delete 'wp_predictive_search_current_post_type_is_syncing'
wp option delete 'wp_predictive_search_auto_synced_custom_types_successed'
wp option delete 'wp_predictive_search_auto_synced_taxonomy_successed'
wp option delete 'wpps_search_schedule_success_recipients'
wp option delete 'wpps_search_schedule_error_recipients'
wp option delete 'wpps_upgraded_to_new_sync_data'
wp option delete 'wp_predictive_search_lite_version'
wp option delete 'wp_predictive_search_sidebar_template_settings'
wp option delete 'wp_predictive_search_header_template_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'predictive_search_have_cat_cache%'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"
wp transient delete 'wp_predictive_search_starting_manual_sync'

# Clear Cron Jobs
wp cron event delete 'wp_predictive_search_sync_data_scheduled_jobs'
wp cron event delete 'wp_predictive_search_auto_preload_cache_event'
wp cron event delete 'wp_predictive_search_auto_sync_posts'
wp cron event delete 'wp_predictive_search_auto_sync_detect_error'
wp cron event delete 'wp_predictive_search_auto_sync_custom_types'
wp cron event delete 'wp_predictive_search_auto_sync_taxonomy'
wp cron event delete 'wp_predictive_search_auto_sync_relationships'
wp cron event delete 'wp_predictive_search_auto_end_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
