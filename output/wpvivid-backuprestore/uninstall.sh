#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpvivid_hide_wp_cron_notice'
wp option delete 'wpvivid_check_htaccess_rule_free'
wp option delete 'wpvivid_hide_mwp_tab_page_v1'
wp option delete 'wpvivid_common_setting'
wp option delete 'wpvivid_local_setting'
wp option delete 'wpvivid_download_cache'
wp option delete 'wpvivid_list_cache'
wp option delete 'wpvivid_export_list'
wp option delete 'wpvivid_import_list_cache'
wp option delete 'wpvivid_exporter_task_list'
wp option delete 'wpvivid_importer_task_list'
wp option delete 'wpvivid_backup_reports'
wp option delete 'wpvivid_saved_api_token'
wp option delete 'wpvivid_task_list'
wp option delete 'wpvivid_download_task_v2'
wp option delete 'wpvivid_compress_setting'
wp option delete 'wpvivid_email_setting'
wp option delete 'cron_backup_count'
wp option delete 'wpvivid_schedule_setting'
wp option delete 'wpvivid_upload_setting'
wp option delete 'wpvivid_user_history'
wp option delete 'wpvivid_download_task'
wp option delete 'wpvivid_api_token'
wp option delete 'wpvivid_restore_task'
wp option delete 'wpvivid_remote_backups_lock'
wp option delete 'wpvivid_last_msg'
wp option delete 'wpvivid_clean_task_2'
wp option delete 'current_theme'
wp option delete 'wpvivid_save_theme_template'
wp option delete 'wpvivid_save_theme_stylesheet'
wp option delete 'wpvivid_save_current_theme'
wp option delete 'wpvivid_save_active_plugins'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete '_elementor_global_css'
wp option delete 'elementor-custom-breakpoints-files'
wp option delete '_elementor_assets_data'
wp option delete '_elementor_local_google_fonts'
wp option delete 'generateblocks_dynamic_css_posts'
wp option delete '_et_builder_global_feature_cache'
wp option delete 'wpvivid_staging_options'
wp option delete 'wpvivid_current_running_staging_task'
wp option delete 'wpvivid_staging_task_cancel'
wp option delete 'wpvivid_staging_data'
wp option delete 'wpvivid_push_staging_history'
wp option delete 'wpvivid_staging_finish'
wp option delete 'wpvivid_staging_init'
wp option delete 'wpvivid_staging_task_list'
wp option delete 'blogdescription '
wp option delete 'wpvivid_staging_history'
wp option delete 'ms_files_rewriting'
wp option delete 'init_isolate_task'
wp option delete 'scan_unused_files_task'
wp option delete 'wpvivid_uc_delete_media_when_delete_file'
wp option delete 'wpvivid_uc_scan_limit'
wp option delete 'wpvivid_uc_files_limit'
wp option delete 'wpvivid_uc_scan_file_types'
wp option delete 'wpvivid_uc_quick_scan'
wp option delete 'wpvivid_uc_exclude_files_regex'
wp option delete 'wpvivid_uc_post_types'
wp option delete 'site_logo'
wp option delete 'unused_uploads_task'
wp option delete 'sidebars_widgets'
wp option delete 'et_divi'
wp option delete 'theme_mods_Divi'
wp option delete 'et_divi_builder_global_presets_d5'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'wpvivid_backup_list'
wp option delete 'wpvivid_init'
wp option delete 'wpvivid_remote_init'
wp option delete 'wpvivid_need_review'
wp option delete 'wpvivid_review_msg'
wp option delete 'wpvivid_review_time'
wp option delete 'wpvivid_review_type'
wp option delete 'wpvivid_migrate_status'
wp option delete 'clean_task'
wp option delete 'wpvivid_backup_success_count'
wp option delete 'wpvivid_backup_error_array'
wp option delete 'wpvivid_amazons3_notice'
wp option delete 'wpvivid_transfer_error_array'
wp option delete 'wpvivid_transfer_success_count'
wp option delete 'wpvivid_backup_report'
wp option delete 'wpvivid_staging_list'

# Delete Transients
wp transient delete 'dropbox_auth_id'
wp transient delete 'google_drive_auth_id'
wp transient delete 'onedrive_auth_id'
wp transient delete 'wp_core_block_css_files'

# Clear Cron Jobs
wp cron event delete 'wpvivid_task_monitor_event_2'
wp cron event delete 'wpvivid_clean_backup_data_event_2'
wp cron event delete 'wpvivid_task_monitor_event'
wp cron event delete 'wpvivid_backup_2_schedule_event'
wp cron event delete 'wpvivid_clean_backup_2_data_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_to_attach'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ct_builder_json'"
