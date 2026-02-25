#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srk_onboarding_has_run'
wp option delete 'srk_setup'
wp option delete 'srk_should_run_modal_onboarding'
wp option delete 'srk_site_info_consent'
wp option delete 'srk_chatbot_enabled'
wp option delete 'srk_last_links_snapshot'
wp option delete 'srk_links_schedule'
wp option delete 'srk_last_links_scan_at'
wp option delete 'td_blc_saved_post_types'
wp option delete 'srk_keytrack_enabled'
wp option delete 'srk_schema_defaults'
wp option delete 'srk_pro_intent'
wp option delete 'srk_alt_scan_enabled'
wp option delete 'srk_redirection_enabled'
wp option delete 'srk_redirection_default_code'
wp option delete 'srk_weekly_report_enabled'
wp option delete 'srk_keytrack_alerts_enabled'
wp option delete 'srk_broken_links_notify_enabled'
wp option delete 'srk_notification_email'
wp option delete 'srk_site_health_info_sent'
wp option delete 'srk_pro_license_key'
wp option delete 'srk_last_successful_check'
wp option delete 'srk_enable_logging'
wp option delete 'srk_log_retention'
wp option delete 'srk_auto_redirect'
wp option delete 'srk_monitor_404s'
wp option delete 'srk_redirect_cache_time'
wp option delete 'srk_ip_collection'
wp option delete 'srk_geolocation_enabled'
wp option delete 'srk_enable_detailed_logging'
wp option delete 'srk_enable_htaccess_sync'
wp option delete 'srk_htaccess_write_all'
wp option delete 'srk_robots_txt_content'
wp option delete 'srk_llms_txt_content'
wp option delete 'srk_robots_txt_last_updated'
wp option delete 'srk_llms_txt_last_updated'
wp option delete 'srk_llms_generator_settings'
wp option delete 'srk_404_monitoring_enabled'
wp option delete 'srk_weekly_report_last_status'
wp option delete 'seo_repair_kit_version'
wp option delete 'srk_plugin_id'
wp option delete 'srk_plugin_instance_id'
wp option delete 'srk_global_telephone'
wp option delete 'srk_global_opening_hours'
wp option delete 'srk_global_price_range'
wp option delete 'srk_global_address'
wp option delete 'srk_global_contact_point'
wp option delete 'srk_global_social_profiles'
wp option delete 'srk_global_founder'
wp option delete 'srk_global_founding_date'
wp option delete 'srk_global_under_name'
wp option delete 'srk_global_reservation_for'
wp option delete 'srk_global_start_time'
wp option delete 'srk_global_party_size'
wp option delete 'srk_global_item_reviewed'
wp option delete 'srk_global_author_name'
wp option delete 'srk_global_review_body'
wp option delete 'srk_global_review_rating'
wp option delete 'srk_global_date_published'
wp option delete 'srk_global_price'
wp option delete 'srk_global_price_currency'
wp option delete 'srk_global_availability'
wp option delete 'srk_global_item_condition'
wp option delete 'srk_global_valid_from'
wp option delete 'srk_global_rating_value'
wp option delete 'srk_global_review_count'
wp option delete 'srk_global_best_rating'
wp option delete 'srk_global_worst_rating'
wp option delete 'srk_global_about'
wp option delete 'srk_global_medical_specialty'
wp option delete 'srk_global_possible_treatment'
wp option delete 'srk_global_possible_complication'
wp option delete 'srk_global_sign_or_symptom'
wp option delete 'srk_global_latitude'
wp option delete 'srk_global_longitude'
wp option delete 'srk_global_keywords'
wp option delete 'srk_global_alternate_name'
wp option delete 'srk_global_facebook_url'
wp option delete 'srk_global_twitter_url'
wp option delete 'srk_global_instagram_url'
wp option delete 'srk_global_youtube_url'
wp option delete 'site_logo'
wp option delete 'srk_api_base_url_override'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp option delete 'srk_llms_rewrite_flushed'
wp option delete 'srk_update_pending'

# Delete Transients
wp transient delete 'srk_pro_license_status'
wp transient delete 'srk_required_tables_check'
wp transient delete 'srk_404_table_exists'
wp transient delete 'srk_404_statistics'
wp transient delete 'srk_table_creation_check'
wp transient delete 'srk_sitekit_activated'
wp transient delete 'srk_redirected_from_repair_kit'
wp transient delete 'srk_redirection_migration_notice'
wp transient delete 'srk_migration_log'
wp transient delete 'srk_robots_txt_content'
wp transient delete 'srk_schema_count'

# Clear Cron Jobs
wp cron event delete 'fetch_gsc_data_cronjob'
wp cron event delete 'srk_weekly_seo_summary_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_profile_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_profile_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_profile_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_profile_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_social_profiles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_social_profiles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_social_profiles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_social_profiles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_field_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_field_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_field_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_field_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_field_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_field_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_field_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_field_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'schema_field_author_social_profiles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'schema_field_author_social_profiles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'schema_field_author_social_profiles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'schema_field_author_social_profiles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueAddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueStateProvince'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueZip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_VenueCountry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_OrganizerWebsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_OrganizerWebsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_OrganizerWebsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_OrganizerWebsite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_OrganizerPhone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_OrganizerPhone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_OrganizerPhone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_OrganizerPhone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srk_faq_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srk_faq_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srk_faq_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srk_faq_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srk_selected_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srk_selected_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srk_selected_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srk_selected_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'schema_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'schema_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'schema_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'schema_field_%'"
