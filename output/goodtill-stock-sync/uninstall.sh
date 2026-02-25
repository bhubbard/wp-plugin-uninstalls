#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_attributes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%background_sync_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%background_sync_interval_seconds'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%subdomain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%eula_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%outlet_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%outlet_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%vat_rates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%import_product_batch_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_adjustment_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync_cache_seconds'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%background_sync_last_synced'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%background_sync_flush_cache'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%eula_datetime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%eula_user'"
wp option delete 'woocommerce_manage_stock'
wp option delete 'gtcsync_sync_cache_seconds'
wp option delete 'gtcsync_background_sync_enabled'
wp option delete 'gtcsync_background_sync_interval_seconds'
wp option delete 'gtcsync_background_sync_last_synced'
wp option delete 'gtcsync_background_sync_flush_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%import_temp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%export_temp'"

