#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wootrelloLogStatus'
wp option delete 'wootrello_include_products_in_card'
wp option delete 'wootrello_trello_API'
wp option delete 'wootrello_installed'
wp option delete 'wootrello_re_installed'
wp option delete 'wootrello_access_code'
wp option delete 'wootrello_trello_settings'
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
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
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wootrello_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wootrello_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wootrello_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wootrello_status'"
