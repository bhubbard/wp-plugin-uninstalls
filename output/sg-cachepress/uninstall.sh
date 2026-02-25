#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteground_optimizer_supercacher_permissions'
wp option delete 'siteground_optimizer_frontend_permissions'
wp option delete 'siteground_optimizer_images_permissions'
wp option delete 'siteground_optimizer_environment_permissions'
wp option delete 'siteground_optimizer_memcache_notice'
wp option delete 'siteground_optimizer_blocking_plugins_notice'
wp option delete 'siteground_optimizer_cache_plugins_notice'
wp option delete 'siteground_optimizer_memcache_crashed'
wp option delete 'siteground_optimizer_update_timestamp'
wp option delete 'siteground_data_consent'
wp option delete 'siteground_email_consent'
wp option delete 'siteground_settings_optimizer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sgo_speed_test_%'"
wp option delete 'sgo_pre_migration_speed_test'
wp option delete 'siteground_optimizer_campaign_steps'
wp option delete 'sg_security_weekly_email_timestamp'
wp option delete 'sgo_campaign_cron_timestamp'
wp option delete 'siteground_optimizer_current_version'
wp option delete 'siteground_optimizer_dns_prefetch_urls'
wp option delete 'siteground_optimizer_database_optimization'
wp option delete 'siteground_optimizer_compression_level_old'
wp option delete 'siteground_optimizer_compression_level'
wp option delete 'siteground_optimizer_combine_css_exclude'
wp option delete 'siteground_optimizer_fonts_preload_urls'
wp option delete 'siteground_optimizer_combine_javascript_exclude'
wp option delete 'siteground_optimizer_logged_in_cache'
wp option delete 'siteground_optimizer_file_cache_secret'
wp option delete 'siteground_optimizer_file_caching_interval_cleanup'
wp option delete 'sg_file_cache_dirsize'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'sgo_file_caching_dropin_failed'
wp option delete 'siteground_optimizer_file_caching'
wp option delete 'siteground_optimizer_async_javascript_exclude'
wp option delete 'siteground_optimizer_heartbeat_post_interval'
wp option delete 'siteground_optimizer_heartbeat_dashboard_interval'
wp option delete 'siteground_optimizer_heartbeat_frontend_interval'
wp option delete 'siteground_optimizer_smart_cache_purge_queue'
wp option delete 'siteground_optimizer_overwrite_custom'
wp option delete 'siteground_optimizer_resize_images'
wp option delete 'disable_conflicting_modules'
wp option delete 'siteground_optimizer_default_ssl_enabled'
wp option delete 'sg_cachepress'
wp option delete 'SGCP_Use_SG_Cache'
wp option delete 'SGCP_Autoflush'
wp option delete 'SGCP_Memcached'
wp option delete 'SGCP_ShowNotice'
wp option delete 'SGCP_IsNginx'
wp option delete 'SGCP_CheckedNginx'
wp option delete 'SGCP_FristRun'
wp option delete 'SGCP_LastFail'
wp option delete 'sg_cachepress_ssl_enabled'
wp option delete 'siteground_optimizer_optimize_html'
wp option delete 'siteground_optimizer_optimize_javascript'
wp option delete 'siteground_optimizer_optimize_javascript_async'
wp option delete 'siteground_optimizer_optimize_css'
wp option delete 'siteground_optimizer_combine_css'
wp option delete 'siteground_optimizer_remove_query_strings'
wp option delete 'siteground_optimizer_disable_emojis'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'siteground_optimizer_default_%'"
wp option delete 'siteground_optimizer_excluded_urls'
wp option delete 'siteground_optimizer_enable_gzip_compression'
wp option delete 'siteground_optimizer_enable_browser_caching'
wp option delete 'siteground_optimizer_phpcompat_status'
wp option delete 'siteground_optimizer_phpcompat_progress'
wp option delete 'siteground_optimizer_phpcompat_is_compatible'
wp option delete 'siteground_optimizer_phpcompat_result'
wp option delete 'siteground_optimizer_image_optimization_completed'
wp option delete 'siteground_optimizer_image_optimization_lock'
wp option delete 'siteground_optimizer_lock'
wp option delete 'siteground_optimizer_excluded_lazy_load_classes'
wp option delete 'siteground_optimizer_whats_new'
wp option delete 'siteground_optimizer_quality_webp'
wp option delete 'siteground_optimizer_quality_type'
wp option delete 'siteground_optimizer_optimize_web_fonts'
wp option delete 'siteground_optimizer_enable_cache'
wp option delete 'siteground_optimizer_autoflush_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%heartbeat_control'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%heartbeat_post_interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%heartbeat_dashboard_interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%heartbeat_frontend_interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excluded_lazy_load_media_types'"
wp option delete 'siteground_settings_optimizer_hello'
wp option delete 'sgo_install_7_4_0'
wp option delete 'siteground_optimizer_performace_receipient'
wp option delete 'siteground_optimizer_version'
wp option delete 'siteground_optimizer_excluded_lazy_load_media_types'
wp option delete 'siteground_optimizer_minify_javascript_exclude'
wp option delete 'siteground_optimizer_minify_css_exclude'
wp option delete 'siteground_optimizer_minify_html_exclude'
wp option delete 'active_sitewide_plugins'
wp option delete 'siteground_optimizer_analytics_permissions'
wp option delete 'siteground_optimizer_enable_memcached'
wp option delete 'siteground_optimizer_ssl_enabled'
wp option delete 'auto_update_plugins'
wp option delete 'siteground_optimizer_preheat_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'siteground_optimizer_%'"
wp option delete 'siteground_optimizer_hide_rating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_interval'"
wp option delete 'siteground_optimizer_backup_media'
wp option delete 'siteground_optimizer_compress_existing'
wp option delete 'siteground_optimizer_total_unoptimized_images'
wp option delete 'siteground_optimizer_image_optimization_status'
wp option delete 'siteground_optimizer_image_optimization_stopped'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%post_types_exclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excluded_urls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%database_optimization'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%minify_html_exclude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fonts_preload_urls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dns_prefetch_urls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%excluded_lazy_load_classes'"
wp option delete 'siteground_optimizer_webp_support'
wp option delete 'siteground_optimizer_webp_conversion_completed'
wp option delete 'siteground_optimizer_total_non_converted_images'
wp option delete 'siteground_optimizer_webp_conversion_status'
wp option delete 'siteground_optimizer_webp_conversion_lock'
wp option delete 'siteground_optimizer_user_agent_header'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timestamp'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sgo_image_optimization_token_%' OR option_name LIKE '_site_transient_sgo_image_optimization_token_%'"
wp transient delete '_siteground_optimizer_installing'
wp transient delete 'wc_attribute_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'sgs_email_cron'
wp cron event delete 'siteground_optimizer_database_optimization_cron'
wp cron event delete 'siteground_optimizer_performance_report_cron'
wp cron event delete 'siteground_optimizer_cache_preheat'
wp cron event delete 'siteground_optimizer_clear_cache_dir'
wp cron event delete 'siteground_optimizer_purge_cron_cache'
wp cron event delete 'siteground_optimizer_start_test_cron'
wp cron event delete 'siteground_optimizer_start_image_optimization_cron'
wp cron event delete 'siteground_optimizer_check_assets_dir'
wp cron event delete 'siteground_delete_assets'
wp cron event delete 'sgo_campaign_cron'
wp cron event delete 'siteground_optimizer_start_webp_conversion_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteground_optimizer_compression_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteground_optimizer_compression_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteground_optimizer_compression_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteground_optimizer_compression_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteground_optimizer_optimization_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteground_optimizer_optimization_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteground_optimizer_optimization_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteground_optimizer_optimization_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteground_optimizer_original_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteground_optimizer_original_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteground_optimizer_original_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteground_optimizer_original_filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteground_optimizer_is_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteground_optimizer_is_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteground_optimizer_is_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteground_optimizer_is_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'siteground_optimizer_is_converted_to_webp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'siteground_optimizer_is_converted_to_webp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'siteground_optimizer_is_converted_to_webp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'siteground_optimizer_is_converted_to_webp'"
