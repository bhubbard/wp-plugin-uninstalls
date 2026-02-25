#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo-quick-view-version'
wp option delete 'wooqv'
wp option delete 'xt-woo-quick-view-version'
wp option delete 'xt_wooqv'
wp option delete 'xt_framework_system_info'
wp option delete 'xirki_telemetry_optin'
wp option delete 'xirki_telemetry_sent'
wp option delete 'xirki_telemetry_no_consent'
wp option delete 'xirki_font_local_filenames'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'xtfw_active_plugins'
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Delete Transients
wp transient delete 'xt_framework_system_info_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'xirki_googlefonts_cache'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xirki_fa_nag_dismissed'"
