-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speed_mate_caching_enable_cache', 'speed_mate_caching_cache_duration', 'speed_mate_caching_enable_static_caching', 'speed_mate_asset_optimization_enable_minification', 'speed_mate_asset_optimization_enable_html_minification', 'speed_mate_asset_optimization_enable_image_lazy_loading', 'speed_mate_asset_optimization_exclusions', 'speed_mate_asset_optimization_combine_css', 'speed_mate_db_optimization_revisions_cleanup_enable', 'speed_mate_db_optimization_revisions_cleanup_schedule', 'speed_mate_db_optimization_revisions_cleanup_keep_count', 'speed_mate_db_optimization_trash_spam_cleanup_enable', 'speed_mate_db_optimization_trash_spam_cleanup_schedule', 'speed_mate_pa_google_api_key', 'speed_mate_caching_enable_header_caching');

