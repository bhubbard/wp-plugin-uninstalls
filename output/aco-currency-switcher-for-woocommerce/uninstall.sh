#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'acowcs_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_shop_page_id'
wp option delete '_test'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ccod'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_acowcs_currency' OR option_name LIKE '_site_transient_%_acowcs_currency'"

# Clear Cron Jobs
wp cron event delete 'acowcs_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fixed_currency_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fixed_currency_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fixed_currency_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fixed_currency_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fixed_userrole_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fixed_userrole_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fixed_userrole_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fixed_userrole_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
