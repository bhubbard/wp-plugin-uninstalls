#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otslf_indexnow_activation_notice'
wp option delete 'otslf_api_key'
wp option delete 'otslf_model'
wp option delete 'otslf_geoapi_location'
wp option delete 'otslf_word_count'
wp option delete 'otslf_featured_image'
wp option delete 'otslf_content_image'
wp option delete 'otslf_image_generate_api_key'
wp option delete 'otslf_language_select'
wp option delete 'otslf_written_select'
wp option delete 'otslf_language_tone'
wp option delete 'otslf_list_faq'
wp option delete 'otslf_sub_heading'
wp option delete 'otslf_htaging'
wp option delete 'otslf_number_h'
wp option delete 'otslf_email_notification'
wp option delete 'otslf_schedule'
wp option delete 'otslf_seokeyword'
wp option delete 'otslf_meta_des'
wp option delete 'otslf_unsplash_generate_api_key'
wp option delete 'otslf_table_con'
wp option delete 'otslf_poscon'
wp option delete 'ktp_google_cx_id'
wp option delete 'ktp_google_api_key'
wp option delete 'otslf_post_author'
wp option delete 'otslf_enable_interlink'
wp option delete 'otslf_max_interlink'
wp option delete 'otslf_hoursInput'
wp option delete 'otslf_minutesInput'
wp option delete 'otslf_laterdate'
wp option delete 'otslf_oclock'
wp option delete 'otslf_recurdate'
wp option delete 'otslf_rcuroclock'
wp option delete 'otslf_ot_taxonomy'
wp option delete 'otslf_admin_email'
wp option delete 'otslf_linkedinvalue'
wp option delete 'otslf_same_schedule'
wp option delete 'otslf_Provider'
wp option delete 'otslf_openrouter_api_key'
wp option delete 'otslf_uberApi'
wp option delete 'ktp_openrouter_api_key'
wp option delete 'otslf_sched_day'
wp option delete 'otslf_page_id'
wp option delete 'otslf_access_token'
wp option delete 'otslf_tw_api_key'
wp option delete 'otslf_tw_api_key_token'
wp option delete 'otslf_tw_access_token'
wp option delete 'otslf_tw_access_token_secret'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'otslf_publish_scheduled_posts'
wp cron event delete 'otslf_publish_posts_event'
wp cron event delete 'otslf_publish_scheduled_posts_daily'
wp cron event delete 'slf_publish_later_same_day'
wp cron event delete 'slf_publish_posts_event'
wp cron event delete 'slf_publish_daily_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_last_active_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_last_active_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_last_active_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_last_active_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otslf_repeater_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otslf_repeater_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otslf_repeater_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otslf_repeater_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zip_radius_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zip_radius_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zip_radius_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zip_radius_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zipcodeRadius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zipcodeRadius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zipcodeRadius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zipcodeRadius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_radiusValue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_radiusValue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_radiusValue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_radiusValue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otslf_zipcode_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otslf_zipcode_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otslf_zipcode_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otslf_zipcode_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_csv_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_csv_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_csv_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_csv_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otslf_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otslf_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otslf_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otslf_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otslf_generated_title_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otslf_generated_title_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otslf_generated_title_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otslf_generated_title_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timezone_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timezone_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timezone_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timezone_string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptf_facebook_shared'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptf_facebook_shared'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptf_facebook_shared'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptf_facebook_shared'"
