#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wpra_did_v4_migration'
wp option delete 'wprss_prev_update_page_version'
wp option delete 'rewrite_rules'
wp option delete 'wpra_version'
wp option delete 'wprss_settings_general'
wp option delete 'wprss_settings_ftp'
wp option delete 'wprss_settings_kf'
wp option delete 'wprss_settings_wordai'
wp option delete 'wprss_spc_settings'
wp option delete 'wprss_admin_notices'
wp option delete 'wprss_settings_license_keys'
wp option delete 'wpra_default_display_id'
wp option delete 'wpra_v4_failed_migrated_item_ids'
wp option delete 'wprss_did_guide_sign_up'
wp option delete 'wprss_v5_coming_notice_dismissed'
wp option delete 'wprss_c_check_existing_feeds'
wp option delete 'wprss_db_version'
wp option delete 'wprss_c_db_version'
wp option delete 'wprss_kf_db_version'
wp option delete 'wprss_ftp_db_version'
wp option delete 'wprss_enable_v5'
wp option delete 'wpra_settings'
wp option delete 'wprss_settings_notices'
wp option delete 'wprss_addon_notices'
wp option delete 'wprss_hs_beacon_enabled'
wp option delete 'wprss_settings_license_statuses'
wp option delete 'wprss_pwsv'
wp option delete 'crontrol_schedules'
wp option delete 'wprss_settings_excerpts'
wp option delete 'wprss_settings_thumbnails'
wp option delete 'wprss_settings'
wp option delete 'wprss_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'wprss_v5_switch_dismissed'
wp option delete 'wprss_did_intro'
wp option delete 'wprss_first_activation_time'
wp option delete 'wprss_intro_feed_id'
wp option delete 'wpseo_titles'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wprss_redirect_to_v5'
wp transient delete 'wpra_notice_rejected_post'
wp transient delete '_wprss_activation_redirect'
wp transient delete 'wprss_notify_inactive_licenses'
wp transient delete 'wprss_item_blacklist_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpra/feeds/importing/%' OR option_name LIKE '_site_transient_wpra/feeds/importing/%'"
wp transient delete 'wprss_notify_bulk_change_state'

# Clear Cron Jobs
wp cron event delete 'wprss_fetch_all_feeds_hook'
wp cron event delete 'wprss_fetch_single_feed_hook'
wp cron event delete 'wprss_delete_feed_items_from_source_hook'
wp cron event delete 'wprss_delete_all_feed_items_hook'
wp cron event delete 'wprss_generate_hook'
wp cron event delete 'wprss_fetch_feeds_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'some_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'some_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'some_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'some_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_source_data_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_source_data_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_source_data_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_source_data_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_author_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_author_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_author_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_author_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_ctx_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_ctx_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_ctx_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_ctx_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_log_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_log_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_log_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_log_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpra_v5_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpra_v5_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpra_v5_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpra_v5_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_update_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_update_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_update_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_update_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_last_update_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_last_update_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_last_update_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_last_update_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_next_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_next_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_next_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_next_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_error_last_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_error_last_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_error_last_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_error_last_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_items_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_items_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_items_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_items_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_feed_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_feed_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_feed_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_feed_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_feed_is_deleting_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_feed_is_deleting_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_feed_is_deleting_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_feed_is_deleting_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_force_next_fetch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_force_next_fetch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_force_next_fetch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_force_next_fetch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_reschedule_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_reschedule_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_reschedule_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_reschedule_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_force_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_force_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_force_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_force_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_activate_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_activate_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_activate_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_activate_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_pause_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_pause_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_pause_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_pause_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_age_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_age_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_age_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_age_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_age_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_age_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_age_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_age_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_update_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_update_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_update_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_update_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_is_yt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_is_yt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_is_yt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_is_yt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_yt_embed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_yt_embed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_yt_embed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_yt_embed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_embed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_embed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_embed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_embed_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_best_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_best_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_best_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_best_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_is_using_def_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_is_using_def_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_is_using_def_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_is_using_def_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_og_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_og_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_og_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_og_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_unique_titles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_unique_titles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_unique_titles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_unique_titles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_use_guids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_use_guids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_use_guids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_use_guids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_site_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_site_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_site_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_site_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_feed_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_feed_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_feed_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_feed_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_feed_is_updating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_feed_is_updating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_feed_is_updating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_feed_is_updating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_enclosure_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_enclosure_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_enclosure_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_enclosure_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_source_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_item_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_item_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_item_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_item_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_source_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_template_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_template_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_template_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_template_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprss_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprss_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprss_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprss_template_type'"
