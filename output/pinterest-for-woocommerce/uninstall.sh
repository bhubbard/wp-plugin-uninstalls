#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_allow_tracking'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'pinterest_for_woocommerce'
wp option delete 'pinterest_for_woocommerce_data'
wp option delete 'pinterest_for_woocommerce_marketing_notifications_init_timestamp'
wp option delete 'pinterest_for_woocommerce_account_connection_timestamp'
wp option delete 'pinterest-for-woocommerce-update-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%status' OR option_name LIKE '_site_transient_%status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%current_index' OR option_name LIKE '_site_transient_%current_index'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%last_activity' OR option_name LIKE '_site_transient_%last_activity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%product_count' OR option_name LIKE '_site_transient_%product_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%error_message' OR option_name LIKE '_site_transient_%error_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_currencies_list' OR option_name LIKE '_site_transient_%_currencies_list'"
wp transient delete 'compat_checker_wc_versions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
