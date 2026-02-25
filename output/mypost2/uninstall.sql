-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mypost2_domain_key', 'mypost2_cached_category_performance', 'mypost2_cached_top_reposts', 'mypost2_cached_stats', 'mypost2_cached_stats_time', 'mypost2_settings', 'mypost2_user_timezone', 'mypost2_user_email', 'mypost2_brand_hashtag_updated_at', 'mypost2_last_sync_timestamp', 'mypost2_user_first_name', 'mypost2_email_verified', 'mypost2_last_sync', 'mypost2_activation_time', 'mypost2_setup_completed', 'mypost2_indexes_created', 'mypost2_db_version', 'mypost2_verification_sent', 'mypost2_billing_migrated_to_get', 'mypost2_dart_count', 'mypost2_billing_legacy_balance', 'mypost2_last_counter_cleanup', 'mypost2_cached_analytics', 'mypost2_tour_completed', 'mypost2_show_setup', 'mypost2_dart_balance_cache', 'mypost2_robots_txt_rules', 'mypost2_verification_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mypost2_pool', '_mypost2_is_repost', '_mypost2_pool_date', '_mypost2_original_id', '_mypost2_created_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mypost2_pool', '_mypost2_is_repost', '_mypost2_pool_date', '_mypost2_original_id', '_mypost2_created_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mypost2_pool', '_mypost2_is_repost', '_mypost2_pool_date', '_mypost2_original_id', '_mypost2_created_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mypost2_pool', '_mypost2_is_repost', '_mypost2_pool_date', '_mypost2_original_id', '_mypost2_created_date');

