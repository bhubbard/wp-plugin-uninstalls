#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_iod_seller_company_name'
wp option delete 'wc_iod_api_username'
wp option delete 'wc_iod_api_password'
wp option delete 'wc_iod_api_customer_code'
wp option delete 'wc_iod_seller_company_address_1'
wp option delete 'woocommerce_store_address'
wp option delete 'wc_iod_seller_company_address_2'
wp option delete 'woocommerce_store_address_2'
wp option delete 'wc_iod_seller_company_city'
wp option delete 'woocommerce_store_city'
wp option delete 'wc_iod_seller_company_postcode'
wp option delete 'woocommerce_store_postcode'

# Clear Cron Jobs
wp cron event delete 'wc_iod_check_order_shipping_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_iod_delivery_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_iod_delivery_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_iod_delivery_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_iod_delivery_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_iod_delivery_branch_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_iod_delivery_branch_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_iod_delivery_branch_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_iod_delivery_branch_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_iod_delivery_distrubution_line_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_iod_delivery_distrubution_line_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_iod_delivery_distrubution_line_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_iod_delivery_distrubution_line_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_iod_response_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_iod_response_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_iod_response_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_iod_response_data'"
