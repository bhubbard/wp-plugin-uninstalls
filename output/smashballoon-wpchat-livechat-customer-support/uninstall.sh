#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpchat_entitlement_token'
wp option delete 'wpchat_entitlement_hash'
wp option delete 'wpchat_entitlement_grace_start'
wp option delete 'wpchat_license_expired_notice'
wp option delete 'wpchat_license_invalid_notice'
wp option delete 'wpchat_license_expiring_notice'
wp option delete 'wpchat_license_failure_count'
wp option delete 'wpchat_license_last_failure'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpchat_faqs_seeded'
wp option delete 'wpchat_funnels_visibility_map'
wp option delete 'wpchat_needs_pro_migrations'
wp option delete 'wpchat_db_version'
wp option delete 'wpchat_license_key'
wp option delete 'wpchat_license_status'
wp option delete 'wpchat_keys_last_refresh'

# Delete Transients
wp transient delete 'wpchat_available_platforms'
wp transient delete 'wpchat_pro_migrations_verified'
wp transient delete 'wpchat_activation_redirect'
wp transient delete 'wpchat_deactivated_notice_id'
wp transient delete 'wpchat_plugin_info'
wp transient delete 'update_plugins'
wp transient delete 'wpchat_public_keys_cache'

# Clear Cron Jobs
wp cron event delete 'wpchat_analytics_process_aggregates'
wp cron event delete 'wpchat_analytics_quick_aggregation'
wp cron event delete 'wpchat_analytics_cleanup_old_data'
wp cron event delete 'wp_scheduled_delete'
wp cron event delete 'wpchat_grace_period_check'
wp cron event delete 'wpchat_vector_generation_cron'
wp cron event delete 'wpchat_embedding_usage_stats_cron'

