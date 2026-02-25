-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppfm_processed_products', 'wppfm_notice_mailaddress', 'wppfm_feed_queue', 'wppfm_background_process_key', 'wppfm_feed_generation_process_process_heartbeat', 'wppfm_enable_performance_monitoring', 'wppfm_performance_metrics_history', 'wppfm_performance_metrics_latest', 'wppfm_auto_feed_fix', 'wppfm_memory_warning_dismissed_at', 'yith_wcbr_brands_label', 'wppfm_omit_price_filters', 'wppfm_disabled_background_mode', 'wppfm_process_logger_status', 'wppfm_show_product_identifiers', 'wppfm_manual_channel_update', 'wppfm_third_party_attribute_keywords', 'wppfm_lic_status', 'wppfm_license_notice_suppressed', 'wppfm_black_friday_promotion_2024_dismissed', 'wppfm_use_full_url_resolution', 'wppfm_db_version', 'wppfm_lic_key', 'wppfm_channel_update_check_date', 'wppfm_channels_to_update', 'wppfm_pending_dispatch_feeds', 'wppfm_latest_weblogs', 'wppfm_feed_data', 'wppfm_batch_counter', 'wp_enqueue_scripts', 'wppfm_running_silent', 'wppfm_nr_of_processed_products', 'wppfm_feed_file_size', 'wppfm_start_product_id', 'wppfm_active_feed_id', 'wppfm_set_global_background_process', 'wppfm_background_process_is_active', 'wppfm_background_process_started_at', 'wppfm_feed_generation_process_process_lock', 'wppfm_last_memory_failure');
DELETE FROM wp_options WHERE option_name LIKE 'wppfm_performance_metrics_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppfm_batch_metadata_%';
DELETE FROM wp_options WHERE option_name LIKE '%_lic_status';
DELETE FROM wp_options WHERE option_name LIKE '%_lic_status_date';
DELETE FROM wp_options WHERE option_name LIKE '%_lic_key';
DELETE FROM wp_options WHERE option_name LIKE '%_lic_expires';
DELETE FROM wp_options WHERE option_name LIKE '%_license_notice_suppressed';
DELETE FROM wp_options WHERE option_name LIKE 'file_path_%';
DELETE FROM wp_options WHERE option_name LIKE 'feed_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'pre_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'channel_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'relations_table_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppfm_feed_completion_context_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppfm_pending_dispatch_%';
DELETE FROM wp_options WHERE option_name LIKE 'wppfm_async_nonce_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_variation_description', '_product_attributes', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', 'wppfm_product_brand', 'wppfm_product_gtin', 'wppfm_product_mpn', 'wppfm_exclude_from_feed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_variation_description', '_product_attributes', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', 'wppfm_product_brand', 'wppfm_product_gtin', 'wppfm_product_mpn', 'wppfm_exclude_from_feed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_variation_description', '_product_attributes', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', 'wppfm_product_brand', 'wppfm_product_gtin', 'wppfm_product_mpn', 'wppfm_exclude_from_feed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_variation_description', '_product_attributes', '_yoast_wpseo_primary_product_cat', 'rank_math_primary_product_cat', 'wppfm_product_brand', 'wppfm_product_gtin', 'wppfm_product_mpn', 'wppfm_exclude_from_feed');

