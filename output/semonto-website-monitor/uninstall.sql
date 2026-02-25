-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('semonto_secret_key', 'semonto_enable_now_test', 'semonto_warning_threshold_now', 'semonto_warning_threshold_5m', 'semonto_warning_threshold_15m', 'semonto_error_threshold_now', 'semonto_error_threshold_5m', 'semonto_error_threshold_15m', 'semonto_enable_5m_test', 'semonto_enable_15m_test', 'semonto_enable_wpdb_test', 'semonto_error_threshold_wpdb', 'semonto_warning_threshold_wpdb', 'semonto_enable_memory_usage_test', 'semonto_warning_threshold_memory_usage', 'semonto_error_threshold_memory_usage', 'semonto_enable_disk_space_test', 'semonto_config_disk_space', 'semonto_enable_disk_space_inode_test', 'semonto_config_disk_space_inode', 'semonto_enable_caching', 'semonto_cache_lifespan');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('semonto_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('semonto_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('semonto_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('semonto_notice_dismissed');

