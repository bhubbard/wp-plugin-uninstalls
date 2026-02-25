#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_mods_oceanwp'
wp option delete 'wmh_media_count'
wp option delete 'wmh_total_media_size'
wp option delete 'wmh_total_unused_media_count'
wp option delete 'wmh_unused_media_size'
wp option delete 'wmh_use_media_count'
wp option delete 'wmh_use_media_size'
wp option delete 'wmh_media_type_info'
wp option delete 'wmh_media_breakdown'
wp option delete 'wmh_scan_status'
wp option delete 'wmh_send_data_to_server_permission'
wp option delete 'wmh_close_analytics_permission_permanently'
wp option delete 'wmh_database_version'
wp option delete 'wmh_database_version_2'
wp option delete 'wmh_scan_option_data'
wp option delete 'wmh_plugin_db_version_upgrade'
wp option delete 'wmh_plugin_db_version'
wp option delete 'wmh_end_time'
wp option delete 'wmh_create_new_table_save_scan_content'
wp option delete 'wmh_post_content_data'
wp option delete 'wmh_page_content_data'
wp option delete 'wmh_page_post_feature_image_ids_data'
wp option delete 'wmh_elementor_data'
wp option delete 'wmh_divi_post_content_data'
wp option delete 'wmh_bricks_post_content_data'
wp option delete 'wmh_bricks_temp_header_data'
wp option delete 'wmh_bricks_temp_footer_data'
wp option delete 'wmh_bricks_temp_page_data'
wp option delete 'wmh_vc_post_content_data'
wp option delete 'wmh_vc_tmp_data_data'
wp option delete 'wmh_enfold_layerslider_data'
wp option delete 'wmh_theme_mode_data'
wp option delete 'wmh_ocean_logo_data'
wp option delete 'wmh_whitelist_media_post_ids'
wp option delete 'wmh_scan_complete'
wp option delete 'wmh_all_attachment_ids'
wp option delete 'wmh_start_time'
wp option delete 'wmh_page_url_content'
wp option delete 'wmh_url_list'
wp option delete 'wmh_url_list_count'
wp option delete 'site_logo'
wp option delete 'wmh_new_update_after_scan'
wp option delete 'wmh_scan_status_new'
wp option delete 'wmh_bulk_restore_total_trash_media'
wp option delete 'wmh_bulk_delete_permanently_total_trash_media'
wp option delete 'wmh_total_elementor_call'
wp option delete 'wmh_licence_key_status'
wp option delete 'wmh_exclude_file_type'
wp option delete 'wmh_delete_media_start_time'
wp option delete 'wmh_delete_media_end_time'
wp option delete 'wmh_delete_all_media_count'
wp option delete 'wmh_directory_scan_start_time'
wp option delete 'wmh_directory_scan_end_time'
wp option delete 'wmh_licence_key_user_info'
wp option delete 'wmh_dir_delete_media_start_time'
wp option delete 'wmh_dir_delete_media_end_time'
wp option delete 'wmh_dir_delete_all_media_total_media_count'
wp option delete 'wmh_last_scan_directory_name'
wp option delete 'wmh_dir_scan_complete'
wp option delete 'wmh_exclude_directory'

# Clear Cron Jobs
wp cron event delete 'fn_mh_daily_cron_job'
wp cron event delete 'fn_mh_weekly_cron_job'
wp cron event delete 'fn_mh_biweekly_cron_job'
wp cron event delete 'fn_mh_monthly_cron_job'
wp cron event delete 'fn_mh_quarterly_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_custom_retina_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcvEditorTemplateElements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcvEditorTemplateElements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcvEditorTemplateElements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcvEditorTemplateElements'"
