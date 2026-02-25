#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'printus_config_settings'
wp option delete 'printus_detached_settings'
wp option delete 'printus_installed_at_version'
wp option delete 'printus_first_install_date'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'printus_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'printus_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'printus_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'printus_dismissed_notices'"
