#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'media_tracker_duplicate_scan_active'
wp option delete 'media_tracker_offset'
wp option delete 'media_tracker_duplicate_count_last_scan'
wp option delete 'media_tracker_duplicates_scanned'
wp option delete 'media_tracker_total_to_scan'
wp option delete 'media_tracker_unused_ids_snapshot'
wp option delete 'media_tracker_last_unused_count'
wp option delete 'unused_media_last_cache_time'
wp option delete 'media_tracker_unused_count_last_scan'
wp option delete 'media_tracker_unused_size_last_scan'
wp option delete 'media_tracker_manual_scan'
wp option delete 'media_tracker_indexes_created'
wp option delete 'media_tracker_installed'
wp option delete 'media_tracker_version'
wp option delete 'media_tracker_stats_summary'

# Delete Transients
wp transient delete 'broken_links_scan_results'
wp transient delete 'media_tracker_dashboard_stats_v8'
wp transient delete 'media_tracker_most_used_media_stats'
wp transient delete 'media_tracker_used_media_stats'
wp transient delete 'media_tracker_dashboard_stats_v6'
wp transient delete 'unused_media_delete_message'
wp transient delete 'media_tracker_total_scan_count'

# Clear Cron Jobs
wp cron event delete 'media_tracker_run_media_scan_bg'
wp cron event delete 'media_tracker_batch_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_media_tracker_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_media_tracker_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_media_tracker_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_media_tracker_hash'"
