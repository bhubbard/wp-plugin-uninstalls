#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'issslpg_next_beat'
wp option delete 'issslpg_original_installation_version'
wp option delete 'issslpg_dismissed_notices'
wp option delete 'issslpg_seed_download_queue_with_demographics_slots'
wp option delete 'issslpg_pending_download_queue_items'
wp option delete 'issslpg_flush_rewrite_rules_flag'
wp option delete 'recently_activated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'issscr_settings'
wp option delete 'issslpg_xml_sitemap_settings'
wp option delete 'issslpg_version'
wp option delete 'issslpg_next_scheduled_sitemap'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'issslpg_schedule_landing_page_updates'
wp cron event delete 'issslpg_schedule_landing_page_bulk_updates'
wp cron event delete 'issslpg_schedule_change_landing_pages_status'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'issslpg_schedule_xml_sitemap_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_city_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_city_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_city_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_city_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_randomizer_toggler'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_randomizer_toggler'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_randomizer_toggler'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_randomizer_toggler'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_ph1_phrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_ph1_phrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_ph1_phrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_ph1_phrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_ph2_phrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_ph2_phrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_ph2_phrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_ph2_phrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_ph3_phrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_ph3_phrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_ph3_phrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_ph3_phrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_singular_general_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_singular_general_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_singular_general_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_singular_general_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_plural_general_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_plural_general_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_plural_general_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_plural_general_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_singular_service_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_singular_service_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_singular_service_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_singular_service_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_plural_service_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_plural_service_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_plural_service_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_plural_service_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_static_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_static_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_static_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_static_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_p1_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_p1_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_p1_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_p1_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_p2_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_p2_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_p2_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_p2_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_p3_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_p3_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_p3_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_p3_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_p4_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_p4_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_p4_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_p4_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issscr_issslpg-template_page_meta_boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issscr_issslpg-template_page_meta_boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issscr_issslpg-template_page_meta_boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issscr_issslpg-template_page_meta_boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_template_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_template_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_template_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_template_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_county_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_county_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_county_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_county_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_location_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_location_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_location_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_location_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_local_content_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_local_content_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_local_content_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_local_content_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_location_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_location_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_location_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_location_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_pinned_large_market_content_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_pinned_large_market_content_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_pinned_large_market_content_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_pinned_large_market_content_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_pinned_alternative_large_market_content_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_pinned_alternative_large_market_content_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_pinned_alternative_large_market_content_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_pinned_alternative_large_market_content_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issslpg_no_duplicate_local_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issslpg_no_duplicate_local_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issslpg_no_duplicate_local_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issslpg_no_duplicate_local_images'"
