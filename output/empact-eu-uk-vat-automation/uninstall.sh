#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ec_shop_id'
wp option delete 'ec_product_sync_enable'
wp option delete 'ec_order_sync_enable'
wp option delete 'ec_rest_api_sync_log'
wp option delete 'ec_shop_verified'
wp option delete 'ec_shop_token'
wp option delete 'ec_shop_refresh_token'
wp option delete 'ec_api_key'
wp option delete 'ec_shop_name'
wp option delete 'ec_shop_sync_enable'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'ec_user_id'
wp option delete 'ec_customer_id'
wp option delete 'ec_customer_email'
wp option delete 'ec_admin_dev_mode'
wp option delete 'ec_is_registration_fee_paid'
wp option delete 'package_name'
wp option delete 'ec_cron_sync_time'
wp option delete 'ec_admin_dev_pwd'
wp option delete 'revenue_architect_setting_data_cc'

# Clear Cron Jobs
wp cron event delete 'ec_add_custom_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_to_empact_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_to_empact_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_to_empact_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_to_empact_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_to_empact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_to_empact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_to_empact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_to_empact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_to_empact_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_to_empact_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_to_empact_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_to_empact_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_empact_order_when_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_empact_order_when_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_empact_order_when_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_empact_order_when_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_empact_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_empact_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_empact_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_empact_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_to_empact_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_to_empact_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_to_empact_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_to_empact_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'empact_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'empact_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'empact_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'empact_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'empact_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'empact_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'empact_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'empact_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sync_test_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sync_test_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sync_test_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sync_test_response'"
