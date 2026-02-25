#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppfm_processed_products'
wp option delete 'wppfm_notice_mailaddress'
wp option delete 'wppfm_feed_queue'
wp option delete 'wppfm_background_process_key'
wp option delete 'wppfm_feed_generation_process_process_heartbeat'
wp option delete 'wppfm_enable_performance_monitoring'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppfm_performance_metrics_active_%'"
wp option delete 'wppfm_performance_metrics_history'
wp option delete 'wppfm_performance_metrics_latest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppfm_batch_metadata_%'"
wp option delete 'wppfm_auto_feed_fix'
wp option delete 'wppfm_memory_warning_dismissed_at'
wp option delete 'yith_wcbr_brands_label'
wp option delete 'wppfm_omit_price_filters'
wp option delete 'wppfm_disabled_background_mode'
wp option delete 'wppfm_process_logger_status'
wp option delete 'wppfm_show_product_identifiers'
wp option delete 'wppfm_manual_channel_update'
wp option delete 'wppfm_third_party_attribute_keywords'
wp option delete 'wppfm_lic_status'
wp option delete 'wppfm_license_notice_suppressed'
wp option delete 'wppfm_black_friday_promotion_2024_dismissed'
wp option delete 'wppfm_use_full_url_resolution'
wp option delete 'wppfm_db_version'
wp option delete 'wppfm_lic_key'
wp option delete 'wppfm_channel_update_check_date'
wp option delete 'wppfm_channels_to_update'
wp option delete 'wppfm_pending_dispatch_feeds'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lic_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lic_status_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lic_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lic_expires'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_notice_suppressed'"
wp option delete 'wppfm_latest_weblogs'
wp option delete 'wppfm_feed_data'
wp option delete 'wppfm_batch_counter'
wp option delete 'wp_enqueue_scripts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'file_path_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'feed_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pre_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'channel_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'relations_table_%'"

# Delete Transients
wp transient delete 'wppfm_running_silent'
wp transient delete 'wppfm_nr_of_processed_products'
wp transient delete 'wppfm_feed_file_size'
wp transient delete 'wppfm_start_product_id'
wp transient delete 'wppfm_active_feed_id'
wp transient delete 'wppfm_set_global_background_process'
wp transient delete 'wppfm_background_process_is_active'
wp transient delete 'wppfm_background_process_started_at'
wp transient delete 'wppfm_feed_generation_process_process_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppfm_feed_completion_context_%' OR option_name LIKE '_site_transient_wppfm_feed_completion_context_%'"
wp transient delete 'wppfm_last_memory_failure'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppfm_pending_dispatch_%' OR option_name LIKE '_site_transient_wppfm_pending_dispatch_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppfm_async_nonce_%' OR option_name LIKE '_site_transient_wppfm_async_nonce_%'"

# Clear Cron Jobs
wp cron event delete 'wppfm_feed_watchdog_cron'
wp cron event delete 'wppfm_remove_old_folder_event'
wp cron event delete 'wppfm_feed_update_schedule'
wp cron event delete 'wppfm_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppfm_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppfm_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppfm_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppfm_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppfm_product_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppfm_product_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppfm_product_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppfm_product_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppfm_product_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppfm_product_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppfm_product_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppfm_product_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppfm_exclude_from_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppfm_exclude_from_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppfm_exclude_from_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppfm_exclude_from_feed'"
