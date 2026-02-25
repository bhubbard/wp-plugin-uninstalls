#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imgseo_enable_sitemap'
wp option delete 'imgseo_auto_generate'
wp option delete 'imgseo_overwrite'
wp option delete 'imgseo_credits'
wp option delete 'imgseo_api_key'
wp option delete 'imgseo_last_check'
wp option delete 'imgseo_last_full_scan'
wp option delete 'imgseo_last_scan_stats'
wp option delete 'imgseo_language'
wp option delete 'imgseo_max_characters'
wp option delete 'imgseo_include_page_title'
wp option delete 'imgseo_include_image_name'
wp option delete 'imgseo_batch_size'
wp option delete 'imgseo_cron_interval'
wp option delete 'imgseo_last_cron_run'
wp option delete 'imgseo_update_title'
wp option delete 'imgseo_update_caption'
wp option delete 'imgseo_update_description'
wp option delete 'imgseo_api_verified'
wp option delete 'imgseo_plan'
wp option delete 'imgseo_always_use_base64'
wp option delete 'imgseo_db_version'
wp option delete 'imgseo_universal_scanner_enabled'
wp option delete 'imgseo_scan_batch_size'
wp option delete 'imgseo_scan_timeout'
wp option delete 'imgseo_cache_expiry_hours'
wp option delete 'imgseo_auto_scan_frequency'
wp option delete 'imgseo_scan_external_images'
wp option delete 'imgseo_scan_background_images'
wp option delete 'imgseo_scan_page_builders'
wp option delete 'imgseo_legacy_migration_completed'
wp option delete 'imgseo_api_credits'
wp option delete 'imgseo_footer_badge'
wp option delete 'imgseo_support_link'
wp option delete 'imgseo_delete_data_on_uninstall'
wp option delete 'imgseo_processing_speed'
wp option delete 'imgseo_custom_prompt'
wp option delete 'imgseo_woocommerce_prompt'
wp option delete 'imgseo_enable_woocommerce_prompt'
wp option delete 'imgseo_initial_scan_completed'
wp option delete 'imgseo_log_retention_days'
wp option delete 'imgseo_renamer_ai_max_words'
wp option delete 'imgseo_renamer_ai_include_post_title'
wp option delete 'imgseo_renamer_ai_include_category'
wp option delete 'imgseo_renamer_enabled'
wp option delete 'imgseo_renamer_mode'
wp option delete 'imgseo_renamer_pattern'
wp option delete 'imgseo_compression_enabled'
wp option delete 'imgseo_compression_quality'
wp option delete 'imgseo_compression_format'
wp option delete 'imgseo_compression_enable_webp'
wp option delete 'imgseo_compression_enable_avif'
wp option delete 'imgseo_compression_webp_quality'
wp option delete 'imgseo_compression_avif_quality'
wp option delete 'imgseo_compression_optimize_web'
wp option delete 'imgseo_compression_strip_metadata'
wp option delete 'imgseo_compression_auto_remove_larger'
wp option delete 'imgseo_compression_serving_method'
wp option delete 'imgseo_sitemap_include_external'
wp option delete 'imgseo_sitemap_auto_refresh'
wp option delete 'imgseo_sitemap_auto_refresh_interval'
wp option delete 'imgseo_sitemap_last_generated'
wp option delete 'imgseo_enable_structured_data'
wp option delete 'imgseo_structured_data_type'
wp option delete 'imgseo_sitemap_enabled'
wp option delete 'imgseo_sitemap_needs_update'
wp option delete 'imgseo_renamer_ai_include_alt_text'
wp option delete 'imgseo_renamer_remove_accents'
wp option delete 'imgseo_renamer_lowercase'
wp option delete 'imgseo_renamer_handle_duplicates'
wp option delete 'imgseo_renamer_elementor_support'
wp option delete 'imgseo_renamer_visualcomposer_support'
wp option delete 'imgseo_renamer_divi_support'
wp option delete 'imgseo_renamer_beaver_support'
wp option delete 'imgseo_compression_always_use_base64'
wp option delete 'imgseo_compression_auto_upload'
wp option delete 'imgseo_compression_backup_original'
wp option delete 'imgseo_compression_max_width'
wp option delete 'imgseo_compression_max_height'
wp option delete 'imgseo_title_prompt'
wp option delete 'imgseo_caption_prompt'
wp option delete 'imgseo_description_prompt'
wp option delete 'imgseo_title_max_length'
wp option delete 'imgseo_caption_max_length'
wp option delete 'imgseo_description_max_length'
wp option delete 'imgseo_filename_max_words'
wp option delete 'imgseo_filename_max_length'
wp option delete 'imgseo_auto_rename_on_upload'
wp option delete 'imgseo_structured_data_include_thumbnails'
wp option delete 'imgseo_structured_data_include_author'
wp option delete 'imgseo_structured_data_max_images'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'imgseo_update_filename'
wp option delete 'imgseo_renamer_enable_integrations'
wp option delete 'imgseo_renamer_block_optimization_plugins'

# Delete Transients
wp transient delete 'imgseo_insufficient_credits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_processing_%' OR option_name LIKE '_site_transient_imgseo_processing_%'"
wp transient delete 'imgseo_last_log_cleanup'
wp transient delete 'imgseo_bulk_operations_active'
wp transient delete 'imgseo_invalid_api_token'
wp transient delete 'imgseo_invalid_token_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_last_result_%' OR option_name LIKE '_site_transient_imgseo_last_result_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_global_processing_%' OR option_name LIKE '_site_transient_imgseo_global_processing_%'"
wp transient delete 'imgseo_stats_cache'
wp transient delete 'imgseo_api_credits'
wp transient delete 'imgseo_recent_performance'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_alt_text_%' OR option_name LIKE '_site_transient_imgseo_alt_text_%'"
wp transient delete 'imgseo_images_without_alt_count_v2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_alt_updated_%' OR option_name LIKE '_site_transient_imgseo_alt_updated_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_stop_job_%' OR option_name LIKE '_site_transient_imgseo_stop_job_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_bulk_rename_job_%' OR option_name LIKE '_site_transient_imgseo_bulk_rename_job_%'"
wp transient delete 'imgseo_global_stop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_auto_rename_executing_%' OR option_name LIKE '_site_transient_imgseo_auto_rename_executing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_imgseo_renaming_%' OR option_name LIKE '_site_transient_imgseo_renaming_%'"

# Clear Cron Jobs
wp cron event delete 'imgseo_check_stuck_jobs'
wp cron event delete 'imgseo_cleanup_rename_logs'
wp cron event delete 'imgseo_auto_refresh_sitemap'
wp cron event delete 'imgseo_single_generate'
wp cron event delete 'imgseo_cleanup_old_data'
wp cron event delete 'imgseo_refresh_credits'
wp cron event delete 'imgseo_initial_full_scan'
wp cron event delete 'imgseo_scheduled_scan'
wp cron event delete 'imgseo_update_stats_cache'
wp cron event delete 'imgseo_delayed_auto_rename'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_pending_generation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_pending_generation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_pending_generation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_pending_generation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_backup_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_backup_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_backup_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_backup_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_backup_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_backup_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_backup_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_backup_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_backup_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_backup_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_backup_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_backup_available'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortpixel_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-smpro-smush-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-smpro-smush-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-smpro-smush-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-smpro-smush-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_auto_rename_pending'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_auto_rename_pending'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_auto_rename_pending'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_auto_rename_pending'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_auto_renamed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_auto_renamed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_auto_renamed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_auto_renamed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_auto_rename_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_auto_rename_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_auto_rename_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_auto_rename_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imgseo_auto_rename_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imgseo_auto_rename_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imgseo_auto_rename_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imgseo_auto_rename_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
