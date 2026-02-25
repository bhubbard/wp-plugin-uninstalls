#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp option delete 'swift_performance_rewrites'
wp option delete 'swift-performance-developer-mode'
wp option delete 'cron'
wp option delete 'swift_performance_options'
wp option delete 'swift_performance_preview'
wp option delete 'swift_performance_messages'
wp option delete 'swift-performance-license'
wp option delete 'swift_performance_autocomplete'
wp option delete 'sg_cachepress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_roles'"
wp option delete 'swift-perforomance-initial-setup-wizard'
wp option delete 'swift-performance-deactivation-settings'
wp option delete 'swift_performance_timeout'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'swift_performance_lazyload_buffer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image_optimizer_db_version'"
wp option delete 'swift_performance_plugin_organizer'
wp option delete 'swift_performance_options-transients'
wp option delete 'swift-perforomance-critical-font'
wp option delete 'external_updates-swift-performance'

# Delete Transients
wp transient delete 'swift_performance_initial_prebuild_links'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swift_performance_dynamic_%' OR option_name LIKE '_site_transient_swift_performance_dynamic_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swift_performance_ajax_%' OR option_name LIKE '_site_transient_swift_performance_ajax_%'"
wp transient delete 'swift_performance_prebuild_cache_hit'
wp transient delete 'swift_performance_prebuild_cache_pid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swift_performance_prebuild_booster_%' OR option_name LIKE '_site_transient_swift_performance_prebuild_booster_%'"
wp transient delete 'swiftperformance_bmpromo'
wp transient delete 'swift_performance_timeout_test_pid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_swift_performance_is_identical_%' OR option_name LIKE '_site_transient_swift_performance_is_identical_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cf_zones' OR option_name LIKE '_site_transient_%_cf_zones'"
wp transient delete 'swift_performance_image_optimizer_pid'
wp transient delete 'swift_image_optimizer_load_images'
wp transient delete 'swift-performance-setup'
wp transient delete 'swift_performance_activate_notice'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'swift_performance_prebuild_cache'
wp cron event delete 'swift_performance_timeout_test'
wp cron event delete 'swift_performance_prebuild_page_cache'
wp cron event delete 'swift_performance_process_optimize_image_queue'
wp cron event delete 'swift_performance_load_images'
wp cron event delete 'swift_performance_collect_anonymized_data'
wp cron event delete 'swift_performance_api_messages'
wp cron event delete 'swift_performance_clear_short_lifespan'
wp cron event delete 'swift_performance_clear_expired'
wp cron event delete 'swift_performance_clear_assets_proxy_cache'
wp cron event delete 'swift_performance_early_loader'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swift_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swift_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swift_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swift_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swift_performance_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swift_performance_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swift_performance_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swift_performance_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swift_include_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swift_include_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swift_include_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swift_include_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
