#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_check_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_download_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_live_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed_version'"
wp option delete 'sr_network_activate'
wp option delete 'sr_is_auto_refresh'
wp option delete 'sr_what_to_refresh'
wp option delete 'sr_refresh_duration'
wp option delete 'sr_data_sync'
wp option delete 'sr_old_data_sync'
wp option delete 'sr_abandoned_cutoff_time'
wp option delete 'sr_abandoned_cutoff_period'
wp option delete 'sr_number_format'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'sr_dismiss_admin_notice'
wp option delete 'currency_type'
wp option delete 'sr_admin_footer'

# Delete Transients
wp transient delete '_sr_activation_redirect'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'sr_send_summary_mails'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
