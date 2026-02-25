#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmcs_default_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'pmcs_currencies'
wp option delete 'pmsc_exchange_rate_update'
wp option delete 'pmsc_exchange_rate_server'
wp option delete 'pmcs_report_admin_currency'
wp option delete 'pmcs_currency_by_ip'
wp option delete 'pmcs_store_data_type'
wp option delete 'pmcs_add_to_menu'
wp option delete 'pmcs_currency_auto_convert'
wp option delete 'pmcs_geoip'
wp option delete 'pmcs_cart_default_currency'
wp option delete 'pmcs_checkout_default_currency'
wp option delete 'pmcs_show_in_menu_location'
wp option delete 'pmcs_show_flag'
wp option delete 'pmcs_show_name'
wp option delete 'pmcs_currencylayer_access_key'
wp option delete 'pmcs_currencylayer_is_paid'
wp option delete 'pmcs_fixer_io_access_key'
wp option delete 'pmcs_fixer_io_is_paid'
wp option delete 'pmcs_openexchangerates_app_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_amount_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_amount_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_amount_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amount_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_base_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_base_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_base_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_base_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sale_price_%'"
