#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws_do_activation_redirect'
wp option delete 'tracksharp_consent_fallback'
wp option delete 'tracksharp_ga4_attribution_mode'
wp option delete 'tracksharp_revenue_excl_tax'
wp option delete 'tracksharp_ga4_use_purchase_sst'
wp option delete 'tracksharp_log_retention_days'
wp option delete 'tracksharp_ga4_measurement_id'
wp option delete 'tracksharp_ga4_api_secret'
wp option delete 'tracksharp_meta_pixel_id'
wp option delete 'tracksharp_meta_access_token'
wp option delete 'tracksharp_meta_test_event_code'
wp option delete 'tracksharp_do_activation_redirect'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'tracksharp_prune_events'
wp cron event delete 'tracksharp_ga4_purchase_fallback'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_ga4_browser_purchase_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_ga4_browser_purchase_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_ga4_browser_purchase_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_ga4_browser_purchase_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_ga4_browser_purchase_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_ga4_browser_purchase_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_ga4_browser_purchase_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_ga4_browser_purchase_event_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_ga4_browser_purchase_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_ga4_browser_purchase_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_ga4_browser_purchase_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_ga4_browser_purchase_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_ga4_purchase_fallback_scheduled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_ga4_purchase_fallback_scheduled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_ga4_purchase_fallback_scheduled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_ga4_purchase_fallback_scheduled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_ga4_purchase_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_ga4_purchase_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_ga4_purchase_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_ga4_purchase_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_purchase_sst_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_purchase_sst_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_purchase_sst_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_purchase_sst_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ws_meta_purchase_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ws_meta_purchase_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ws_meta_purchase_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ws_meta_purchase_sent'"
