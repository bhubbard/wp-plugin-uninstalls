#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptbsb_sitemap_cache_time'
wp option delete 'ptbsb_rewrite_rules_version'
wp option delete 'ptbsb_selective_gallery_mode'
wp option delete 'ptbsb_wp_sitemap_integration'
wp option delete 'ptbsb_debug_logging'
wp option delete 'ptbsb_seo_integration_mode'
wp option delete 'ptbsb_force_add_robots_txt'
wp option delete 'ptbsb_disable_robots_txt'
wp option delete 'ptbsb_seo_integration_result'
wp option delete 'ptbsb_seo_integration_timestamp'
wp option delete 'ptbsb_sitemap_cache_stale'
wp option delete 'ptbsb_robots_cleanup_needed'
wp option delete 'ptbsb_log_files_migrated'
wp option delete 'ptbsb_seo_conflict_handled'
wp option delete 'ptbsb_seo_plugins_hash'
wp option delete 'ptbsb_last_sitemap_generation'
wp option delete 'ptbsb_update_cache_buster'
wp option delete 'ptbsb_use_dummy_data'
wp option delete 'ptbsb_sitemap_metadata'

# Delete Transients
wp transient delete 'ptbsb_seo_conflict_notice'
wp transient delete 'ptbsb_scan_success'
wp transient delete 'ptbsb_sitemap_cache'
wp transient delete 'robots_txt'
wp transient delete 'wp_robots_txt'
wp transient delete 'ptbsb_update_check'
wp transient delete 'ptbsb_reset_success'
wp transient delete 'ptbsb_seo_integration_result'
wp transient delete 'ptbsb_settings_updated'
wp transient delete 'ptbsb_robots_verification_scheduled'
wp transient delete 'ptbsb_robots_write_failed'
wp transient delete 'ptbsb_scan_partial'
wp transient delete 'ptbsb_scan_failed'
wp transient delete 'ptbsb_robots_analysis'
wp transient delete 'ptbsb_robots_platform_restriction'
wp transient delete 'ptbsb_robots_notice_dismissed'
wp transient delete 'ptbsb_seopress_test_result'
wp transient delete 'ptbsb_scan_queue'
wp transient delete 'ptbsb_scan_progress'
wp transient delete 'ptbsb_sitemap_regenerating'
wp transient delete 'ptbsb_robots_physical_check_done'
wp transient delete 'ptbsb_seo_check_cache'
wp transient delete 'ptbsb_needs_flush'
wp transient delete 'ptbsb_update_available'

# Clear Cron Jobs
wp cron event delete 'ptbsb_verify_robots_write'
wp cron event delete 'ptbsb_regenerate_sitemap_cron'
wp cron event delete 'ptbsb_daily_update_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptbsb_last_scanned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptbsb_last_scanned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptbsb_last_scanned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptbsb_last_scanned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptbsb_last_scan_image_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptbsb_last_scan_image_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptbsb_last_scan_image_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptbsb_last_scan_image_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptbsb_scan_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptbsb_scan_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptbsb_scan_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptbsb_scan_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptbsb_gallery_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptbsb_gallery_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptbsb_gallery_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptbsb_gallery_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptbsb_cached_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptbsb_cached_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptbsb_cached_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptbsb_cached_images'"
