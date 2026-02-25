#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mypost2_domain_key'
wp option delete 'mypost2_cached_category_performance'
wp option delete 'mypost2_cached_top_reposts'
wp option delete 'mypost2_cached_stats'
wp option delete 'mypost2_cached_stats_time'
wp option delete 'mypost2_settings'
wp option delete 'mypost2_user_timezone'
wp option delete 'mypost2_user_email'
wp option delete 'mypost2_brand_hashtag_updated_at'
wp option delete 'mypost2_last_sync_timestamp'
wp option delete 'mypost2_user_first_name'
wp option delete 'mypost2_email_verified'
wp option delete 'mypost2_last_sync'
wp option delete 'mypost2_activation_time'
wp option delete 'mypost2_setup_completed'
wp option delete 'mypost2_indexes_created'
wp option delete 'mypost2_db_version'
wp option delete 'mypost2_verification_sent'
wp option delete 'mypost2_billing_migrated_to_get'
wp option delete 'mypost2_dart_count'
wp option delete 'mypost2_billing_legacy_balance'
wp option delete 'mypost2_last_counter_cleanup'
wp option delete 'mypost2_cached_analytics'
wp option delete 'mypost2_tour_completed'

# Delete Transients
wp transient delete 'mypost2_show_setup'
wp transient delete 'mypost2_dart_balance_cache'
wp transient delete 'mypost2_robots_txt_rules'
wp transient delete 'mypost2_verification_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'mypost2_hourly_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mypost2_pool'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mypost2_pool'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mypost2_pool'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mypost2_pool'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mypost2_is_repost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mypost2_is_repost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mypost2_is_repost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mypost2_is_repost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mypost2_pool_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mypost2_pool_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mypost2_pool_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mypost2_pool_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mypost2_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mypost2_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mypost2_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mypost2_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mypost2_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mypost2_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mypost2_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mypost2_created_date'"
