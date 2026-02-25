#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_rc_last-check-invoices'
wp option delete 'wc_riskcube_service_type'
wp option delete 'wc_riskcube_invoice_payment_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_riskcube_payment_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_riskcube_active_%'"
wp option delete 'wc_riskcube_zs_live'
wp option delete 'wc_riskcube_zs_api_id'
wp option delete 'wc_riskcube_zs_live_api_key'
wp option delete 'wc_riskcube_zs_test_api_key'
wp option delete 'wc_riskcube_zs_live_api_url'
wp option delete 'wc_riskcube_zs_test_api_url'
wp option delete 'wc_riskcube_live'
wp option delete 'wc_riskcube_api_id'
wp option delete 'wc_riskcube_live_api_key'
wp option delete 'wc_riskcube_test_api_key'
wp option delete 'wc_riskcube_live_api_url'
wp option delete 'wc_riskcube_test_api_url'
wp option delete 'wc_riskcube_fk_confirm_state'
wp option delete 'wc_riskcube_invoice_payment_method'
wp option delete 'wc_riskcube_invoice_sending'
wp option delete 'wc_riskcube_error_recipient'
wp option delete 'wc_riskcube_wc_checkout_version'
wp option delete 'wc_riskcube_log_status'
wp option delete 'wc_riskcube_zs_min_val'
wp option delete 'wc_riskcube_zs_min_val2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_reconciliation_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_reconciliation_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_reconciliation_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_reconciliation_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_remarks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_remarks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_remarks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_remarks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_orderprocesstoken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_orderprocesstoken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_orderprocesstoken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_orderprocesstoken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_invoiced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_invoiced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_invoiced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_invoiced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
