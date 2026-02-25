#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dslpfw_where_hear_about_us'
wp option delete 'dslpfw_data_submited_in_sendiblue'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslpfw_pickup_location_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslpfw_pickup_location_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslpfw_pickup_location_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslpfw_pickup_location_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslpfw_settings_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslpfw_settings_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslpfw_settings_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslpfw_settings_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_pickup_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_pickup_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_pickup_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_pickup_location'"
