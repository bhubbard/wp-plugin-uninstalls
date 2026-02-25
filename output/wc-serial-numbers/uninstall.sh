#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_serial_numbers_revoke_keys'
wp option delete 'wc_serial_numbers_hide_serial_number'
wp option delete 'wc_serial_numbers_dismissed_notices'
wp option delete 'wc_serial_numbers_enable_stock_notification'
wp option delete 'wc_serial_numbers_stock_threshold'
wp option delete 'wc_serial_numbers_notification_recipient'
wp option delete 'wcsn_pkey'
wp option delete 'wc_serial_numbers_install_date'
wp option delete 'woocommerce_serial_numbers_pro_pluginever_license'
wp option delete 'woocommerceserialnumbers_install_time'
wp option delete 'wc_serial_numbers_autocomplete_order'
wp option delete 'wcsn_enable_pdf_invoices'
wp option delete 'wcsn_manage_stocks'
wp option delete 'wc_serial_numbers_disable_software_support'
wp option delete 'wc_serial_numbers_reuse_serial_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wcsn_products_stock_count'
wp transient delete 'wc_serial_numbers_activated'
wp transient delete 'wc_serial_numbers_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'wc_serial_numbers_hourly_event'
wp cron event delete 'wc_serial_numbers_daily_event'
wp cron event delete 'wcsn_per_minute_event'
wp cron event delete 'wcsn_daily_event'
wp cron event delete 'wcsn_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_serial_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_serial_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_serial_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_serial_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_serial_key_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_serial_key_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_serial_key_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_serial_key_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_software_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_software_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_software_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_software_version'"
