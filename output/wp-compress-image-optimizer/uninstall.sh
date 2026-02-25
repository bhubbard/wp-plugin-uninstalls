#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc-excludes'
wp option delete 'wpc-url-excludes'
wp option delete 'aio_wp_security_configs'
wp option delete 'whl_page'
wp option delete 'hmwp_options'
wp option delete 'wpc-inline'
wp option delete 'wps_ic_allow_live'
wp option delete 'wpc-ic-lazy-exclude'
wp option delete 'wpc-ic-external-url-exclude'
wp option delete 'wps_ic_brizy_cache'
wp option delete 'ic_custom_cname'
wp option delete 'ic_cdn_zone_name'
wp option delete 'wpc-ic-preloaded-pages'
wp option delete 'wps_ic_preloadsMobile'
wp option delete 'wps_ic_preloads'
wp option delete 'perfmatters_options'
wp option delete 'wp_rocket_settings'
wp option delete 'page_on_posts'
wp option delete 'wpc_critical_assets_home'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_critical_css_%'"
wp option delete 'critical_generator_cron'
wp option delete 'wpc_errors'
wp option delete 'wps_ic_geo_locate'
wp option delete 'wps_ic_force_local_server'
wp option delete 'wpc-ic-force-location'
wp option delete 'wps_ic_BulkStatus'
wp option delete 'wps_ic_parsed_images'
wp option delete 'wps_ic_bulk_counter'
wp option delete 'wps_ic_restoreStats'
wp option delete 'wps_ic_bg_stop'
wp option delete 'wps_ic_bg_process_stop'
wp option delete 'wps_ic_bg_stopping'
wp option delete 'wps_ic_bg_process'
wp option delete 'wps_ic_bg_process_done'
wp option delete 'wps_ic_bg_process_running'
wp option delete 'wps_ic_bg_process_stats'
wp option delete 'wps_ic_bg_last_run_compress'
wp option delete 'wps_ic_bg_last_run_restore'
wp option delete 'wps_ic_notice_info'
wp option delete 'wps_ic_modified_css_cache'
wp option delete 'wps_ic_css_combined_cache'
wp option delete 'wpc_preloaded_status'
wp option delete 'wps_ic_exclude_list'
wp option delete 'wps_ic_affiliate_code'
wp option delete 'wpsShowAdvanced'
wp option delete 'wps_ic_bulk_process'
wp option delete 'ic_cname_retry_count'
wp option delete 'wpc-ic-delay-js-exclude'
wp option delete 'wps_ic_gen_hp_url'
wp option delete 'wpc-warmup-selector'
wp option delete 'wpc-connectivity-status'
wp option delete 'wpc-tests'
wp option delete 'wps_ic_precache_list'
wp option delete 'wps_ic_cache_interval'
wp option delete 'wps_no_content_excludes_css'
wp option delete 'wps_no_content_excludes_js'
wp option delete 'ic_remote_action'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tmp'"
wp option delete 'fusion_options'
wp option delete 'wps_ic_compress_info'
wp option delete 'wps_ic_restore_queue_status'
wp option delete 'ic_log_run'
wp option delete 'wps_ic_excluded_list'
wp option delete 'active_sitewide_plugins'
wp option delete 'wps_ic_preset_setting'
wp option delete 'wps_ic_integrations'
wp option delete 'wps_ic_allow_local'
wp option delete 'wps-ic-background-compress-queue'
wp option delete 'wps_ic_mu_tmp_settings'
wp option delete 'wps_ic_mu_site_list'
wp option delete 'multisite_default_settings'
wp option delete 'wps_ic_settings'
wp option delete 'wps_ic_found_scripts'
wp option delete 'wps_ic_found_styles'
wp option delete 'wps_ic_registered_scripts'
wp option delete 'wps_ic_registered_styles'
wp option delete 'wps_ic_enqueued_scripts_head'
wp option delete 'wps_ic_global_scripts'
wp option delete 'wps_ic_enqueued_scripts_footer'
wp option delete 'wps_ic_global_styles'
wp option delete 'wps_ic_enqueued_styles'
wp option delete 'wpc-warmup-errors'
wp option delete 'wps_ic_queues_running'
wp option delete 'wpc_version'
wp option delete 'wps_ic_debug'
wp option delete 'autoptimize_imgopt_settings'
wp option delete 'autoptimize_css_defer'
wp option delete 'wpc_show_hidden_menus'
wp option delete 'wps_ic_prosite'
wp option delete 'wps_ic_js_debug'
wp option delete 'wps_ic_list_mode_notice'
wp option delete 'trp_settings'
wp option delete 'ic_debug'
wp option delete 'WPS_IC_OPTIONS'
wp option delete 'hide_wpcompress_plugin'
wp option delete 'pause_wpcompress_plugin'
wp option delete 'wps_ic'
wp option delete 'wps_ic_mu_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpc_critical_ajax_%' OR option_name LIKE '_site_transient_wpc_critical_ajax_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_ic_compress_%' OR option_name LIKE '_site_transient_wps_ic_compress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_ic_queue_%' OR option_name LIKE '_site_transient_wps_ic_queue_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_ic_heartbeat_%' OR option_name LIKE '_site_transient_wps_ic_heartbeat_%'"
wp transient delete 'wps_ic_bulk_stats'
wp transient delete 'wps_ic_bulk_running'
wp transient delete 'wps_ic_css_cache'
wp transient delete 'wps_ic_purging_cdn'
wp transient delete 'wps_ic_bulk_done'
wp transient delete 'wps_ic_stuck_check'
wp transient delete 'wps_ic_restore_queue'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_ic_restore_%' OR option_name LIKE '_site_transient_wps_ic_restore_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%Enabled' OR option_name LIKE '_site_transient_%Enabled'"
wp transient delete 'wpc-page-optimizations-status-check'
wp transient delete 'wpc-page-optimizations-status'
wp transient delete 'wpc_update_css_preload'
wp transient delete 'wps_ic_stats_update'
wp transient delete 'ic_allow_local'
wp transient delete 'wps_ic_compress_queue'
wp transient delete 'wpc-post-info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpc_test_%' OR option_name LIKE '_site_transient_wpc_test_%'"
wp transient delete 'wpc-connectivity-status'
wp transient delete 'api_test_results'
wp transient delete 'wps_ic_live_stats_v2'
wp transient delete 'wps_ic_local_sum_stats'
wp transient delete 'wps_ic_local_stats'
wp transient delete 'ic_sample_data_live'
wp transient delete 'wps_ic_live_stats'
wp transient delete 'wps_ic_account_status'
wp transient delete 'wps_icQuotaStatus'
wp transient delete 'wps_ic_favicon'

# Clear Cron Jobs
wp cron event delete 'run_precache_cron_job'
wp cron event delete 'runCronPreload'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_critical_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_critical_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_critical_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_critical_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_critical_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_critical_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_critical_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_critical_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_images_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_images_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_images_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_images_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_uploaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_uploaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_uploaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_uploaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_backup_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_backup_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_backup_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_backup_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_original_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_original_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_original_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_original_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_old_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_old_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_old_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_old_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_compressed_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_compressed_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_compressed_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_compressed_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_bulk_running'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_bulk_running'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_bulk_running'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_bulk_running'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_compressed_thumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_compressed_thumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_compressed_thumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_compressed_thumbs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_debug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_debug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_debug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_debug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_compressing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_compressing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_compressing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_compressing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_exclude_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_exclude_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_exclude_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_exclude_live'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_started'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_started'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_started'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_started'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_cdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_cdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_cdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_cdn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_in_bulk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_in_bulk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_in_bulk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_in_bulk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_compressing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_compressing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_compressing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_compressing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_restoring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_restoring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_restoring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_restoring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_restored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_restored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_restored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_restored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_compressed_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_compressed_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_compressed_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_compressed_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_dimmensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_dimmensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_dimmensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_dimmensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_noncompressed_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_noncompressed_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_noncompressed_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_noncompressed_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'request_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'request_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'request_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'request_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'request_response_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'request_response_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'request_response_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'request_response_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'request_response_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'request_response_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'request_response_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'request_response_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_remote_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_remote_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_remote_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_remote_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_webp_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_webp_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_webp_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_webp_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_webp_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_webp_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_webp_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_webp_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webp_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webp_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webp_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webp_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_ic_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_ic_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_ic_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_ic_exclude'"
