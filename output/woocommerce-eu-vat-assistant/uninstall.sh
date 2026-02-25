#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_tax_classes'
wp option delete 'woocommerce_tax_based_on'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aelia_dismissed_messages_%' OR option_name LIKE '_site_transient_aelia_dismissed_messages_%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'VIES_WSDL'

# Clear Cron Jobs
wp cron event delete 'aelia_afc_geoip_updater'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number_validated'"
