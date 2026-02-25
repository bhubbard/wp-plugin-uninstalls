-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swift_performance_rewrites', 'swift-performance-developer-mode', 'cron', 'swift_performance_options', 'swift_performance_preview', 'swift_performance_messages', 'swift-performance-license', 'swift_performance_autocomplete', 'sg_cachepress', 'swift-perforomance-initial-setup-wizard', 'swift-performance-deactivation-settings', 'swift_performance_timeout', 'woocommerce_shop_page_id', 'swift_performance_lazyload_buffer', 'swift_performance_plugin_organizer', 'swift_performance_options-transients', 'swift-perforomance-critical-font', 'external_updates-swift-performance', 'swift_performance_initial_prebuild_links', 'swift_performance_prebuild_cache_hit', 'swift_performance_prebuild_cache_pid', 'swiftperformance_bmpromo', 'swift_performance_timeout_test_pid', 'swift_performance_image_optimizer_pid', 'swift_image_optimizer_load_images', 'swift-performance-setup', 'swift_performance_activate_notice', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%image_optimizer_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'swift_performance_dynamic_%';
DELETE FROM wp_options WHERE option_name LIKE 'swift_performance_ajax_%';
DELETE FROM wp_options WHERE option_name LIKE 'swift_performance_prebuild_booster_%';
DELETE FROM wp_options WHERE option_name LIKE 'swift_performance_is_identical_%';
DELETE FROM wp_options WHERE option_name LIKE '%_cf_zones';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swift_pointers', 'swift_performance_options', '_wp_attachment_metadata', 'swift_include_scripts', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('swift_pointers', 'swift_performance_options', '_wp_attachment_metadata', 'swift_include_scripts', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('swift_pointers', 'swift_performance_options', '_wp_attachment_metadata', 'swift_include_scripts', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swift_pointers', 'swift_performance_options', '_wp_attachment_metadata', 'swift_include_scripts', 'first_name');

