#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooecpay_enabled_payment'
wp option delete 'wooecpay_enabled_logistic'
wp option delete 'wooecpay_enabled_logistic_outside'
wp option delete 'wooecpay_enabled_invoice'
wp option delete 'wooecpay_enabled_cancel_invoice_auto'
wp option delete 'wooecpay_enabled_invoice_auto'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'wooecpay_keep_logistic_phone'
wp option delete 'woocommerce_Wooecpay_Gateway_Dca_settings'
wp option delete 'ecpay_db_version'
wp option delete 'wooecpay_enabled_invoice_stage'
wp option delete 'wooecpay_invoice_mid'
wp option delete 'wooecpay_invoice_hashkey'
wp option delete 'wooecpay_invoice_hashiv'
wp option delete 'wooecpay_invoice_prefix'
wp option delete 'wooecpay_invoice_dalay_date'
wp option delete 'wooecpay_enabled_debug_log'
wp option delete 'wooecpay_logistic_order_prefix'
wp option delete 'wooecpay_logistic_sender_name'
wp option delete 'wooecpay_logistic_sender_cellphone'
wp option delete 'wooecpay_logistic_sender_zipcode'
wp option delete 'wooecpay_logistic_sender_address'
wp option delete 'wooecpay_enabled_logistic_disp_item_name'
wp option delete 'wooecpay_logistic_cvs_type'
wp option delete 'wooecpay_enabled_logistic_stage'
wp option delete 'wooecpay_logistic_mid'
wp option delete 'wooecpay_logistic_hashkey'
wp option delete 'wooecpay_logistic_hashiv'
wp option delete 'wooecpay_payment_order_prefix'
wp option delete 'wooecpay_enabled_payment_stage'
wp option delete 'wooecpay_payment_mid'
wp option delete 'wooecpay_payment_hashkey'
wp option delete 'wooecpay_payment_hashiv'
wp option delete 'woocommerce_Wooecpay_Gateway_Credit_Installment_settings'
wp option delete 'woocommerce_Wooecpay_Gateway_Atm_settings'
wp option delete 'woocommerce_Wooecpay_Gateway_Barcode_settings'
wp option delete 'woocommerce_Wooecpay_Gateway_Cvs_settings'
wp option delete 'wooecpay_invoice_donate'
wp option delete 'wooecpay_invoice_carruer_papper'
wp option delete 'wooecpay_enabled_payment_disp_item_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wooecpay_enabled_payment_disp_email'
wp option delete 'woocommerce_ecpay_dca'
wp option delete 'wooecpay_enable_logistic_auto'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wooecpay_payment_installment_%' OR option_name LIKE '_site_transient_wooecpay_payment_installment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wooecpay_receipt_page_executed_%' OR option_name LIKE '_site_transient_wooecpay_receipt_page_executed_%'"

