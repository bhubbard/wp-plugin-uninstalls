-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_tracker_duplicate_scan_active', 'media_tracker_offset', 'media_tracker_duplicate_count_last_scan', 'media_tracker_duplicates_scanned', 'media_tracker_total_to_scan', 'media_tracker_unused_ids_snapshot', 'media_tracker_last_unused_count', 'unused_media_last_cache_time', 'media_tracker_unused_count_last_scan', 'media_tracker_unused_size_last_scan', 'media_tracker_manual_scan', 'media_tracker_indexes_created', 'media_tracker_installed', 'media_tracker_version', 'media_tracker_stats_summary', 'broken_links_scan_results', 'media_tracker_dashboard_stats_v8', 'media_tracker_most_used_media_stats', 'media_tracker_used_media_stats', 'media_tracker_dashboard_stats_v6', 'unused_media_delete_message', 'media_tracker_total_scan_count');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_media_tracker_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_media_tracker_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_media_tracker_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_media_tracker_hash');

