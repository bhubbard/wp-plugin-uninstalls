#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paynl_order_description_prefix'
wp option delete 'paynl_payment_expire_time'
wp option delete 'paynl_high_risk'
wp option delete 'paynl_exchange_url'
wp option delete 'paynl_show_vat_number'
wp option delete 'paynl_show_coc_number'
wp option delete 'paynl_terminals'
wp option delete 'paynl_cores'
wp option delete 'paynl_payment_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'paynl_tokencode'
wp option delete 'paynl_apitoken'
wp option delete 'paynl_serviceid'
wp option delete 'paynl_failover_gateway'
wp option delete 'paynl_custom_failover_gateway'
wp option delete 'paynl_test_ipadress'
wp option delete 'paynl_paylogger'
wp option delete 'paynl_test_mode'
wp option delete 'paynl_status_paid'
wp option delete 'paynl_status_cancel'
wp option delete 'paynl_status_failed'
wp option delete 'paynl_status_authorized'
wp option delete 'paynl_status_verify'
wp option delete 'paynl_status_chargeback'
wp option delete 'paynl_verify_amount'
wp option delete 'paynl_payment_method_display'
wp option delete 'paynl_externalrefund'
wp option delete 'paynl_exclude_restock'
wp option delete 'pay_db_version'
wp option delete 'paynl_standard_style'
wp option delete 'paynl_auto_capture'
wp option delete 'paynl_auto_void'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CustomerName'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CustomerName'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CustomerName'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CustomerName'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CustomerKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CustomerKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CustomerKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CustomerKey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coc_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coc_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coc_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coc_number'"
