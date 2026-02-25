#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsurfer_api_access_key'
wp option delete 'surfer_connection_details'
wp option delete 'surfer_last_gsc_data_update'
wp option delete 'surfer_version'
wp option delete 'surfer_auth_user'
wp option delete 'surfer_image_download_queue'
wp option delete 'surfer_notification_dismissals'
wp option delete 'surfer_connection_token'
wp option delete 'surfer_available_locations'

# Delete Transients
wp transient delete '_surfer_activation_redirect'
wp transient delete 'surfer_gsc_weekly_report_email_sent'
wp transient delete 'surfer_installing'
wp transient delete 'surfer_updated'
wp transient delete 'surfer_tracking_first_enabled'
wp transient delete 'surfer_gsc_data_collection_posts_max'
wp transient delete 'surfer_gsc_data_collection_posts_done'
wp transient delete 'surfer_gsc_weekly_report_ready'

# Clear Cron Jobs
wp cron event delete 'surfer_gather_drop_monitor_data'
wp cron event delete 'surfer_process_image_queue'
wp cron event delete 'surfer_gather_available_locations'
wp cron event delete 'surfer_gather_position_monitor_data_bunch'
wp cron event delete 'surfer_gather_posts_traffic'
wp cron event delete 'surfer_gather_position_monitor_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_draft_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_draft_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_draft_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_draft_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_last_post_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_last_post_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_last_post_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_last_post_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_last_post_update_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_last_post_update_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_last_post_update_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_last_post_update_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_permalink_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_permalink_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_permalink_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_permalink_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_scrape_ready'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_scrape_ready'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_scrape_ready'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_scrape_ready'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surfer_json_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surfer_json_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surfer_json_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surfer_json_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manageedit-postcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surfer_file_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surfer_file_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surfer_file_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surfer_file_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surferseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surferseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surferseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surferseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surferseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surferseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surferseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surferseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
