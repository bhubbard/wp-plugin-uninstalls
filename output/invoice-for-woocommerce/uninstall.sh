#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'countries_flag'
wp option delete 'activate_all_VAT_fields'
wp option delete 'logo_invoice1'
wp option delete 'field_1'
wp option delete 'field_2'
wp option delete 'field_4'
wp option delete 'field_6'
wp option delete 'field_7'
wp option delete 'field_8'
wp option delete 'field_9'
wp option delete 'field_10'
wp option delete 'field_11'
wp option delete 'field_12'
wp option delete 'field_13'
wp option delete 'field_14'
wp option delete 'field_49'
wp option delete 'field_15'
wp option delete 'field_16'
wp option delete 'field_17'
wp option delete 'field_18'
wp option delete 'field_19'
wp option delete 'field_20'
wp option delete 'field_21'
wp option delete 'field_22'
wp option delete 'field_23'
wp option delete 'field_24'
wp option delete 'field_26'
wp option delete 'field_28'
wp option delete 'field_30'
wp option delete 'field_31'
wp option delete 'field_32'
wp option delete 'field_33'
wp option delete 'field_52'
wp option delete 'field_34'
wp option delete 'field_35'
wp option delete 'field_36'
wp option delete 'field_38'
wp option delete 'field_40'
wp option delete 'field_41'
wp option delete 'field_42'
wp option delete 'field_43'
wp option delete 'field_44'
wp option delete 'field_45'
wp option delete 'field_46'
wp option delete 'field_47'
wp option delete 'VAT_fields_title'
wp option delete 'activate_grounds_for_zero'
wp option delete 'custom_payment_method'
wp option delete 'field_48'
wp option delete '2_field_53'
wp option delete 'activate_digital_goods'
wp option delete 'activate_plugin'
wp option delete 'logo_invoice2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'field_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lang1'"
wp option delete 'countries_flag_1'
wp option delete 'ifw_add_invoice'
wp option delete 'custom_payment_method_2'
wp option delete 'check_grounds'
wp option delete 'activate_digital_ip'
wp option delete 'vats_base_country'
wp option delete 'activate_order_detiles_list'
wp option delete 'show_download_times'
wp option delete 'show_products_in_orders'
wp option delete 'activate_qr_code'
wp option delete 'custom_qr_field'
wp option delete 'custom_qr_field_1'
wp option delete 'email_subject'
wp option delete 'email_text'
wp option delete 'email_from_email'
wp option delete 'from_d'
wp option delete 'to_d'
wp option delete 'sum_total_0'
wp option delete 'sum_vat_17'
wp option delete 'sum_total_17'
wp option delete 'sum_vat_18'
wp option delete 'sum_total_18'
wp option delete 'sum_vat_19'
wp option delete 'sum_total_19'
wp option delete 'sum_vat_20'
wp option delete 'sum_total_20'
wp option delete 'sum_vat_21'
wp option delete 'sum_total_21'
wp option delete 'sum_vat_22'
wp option delete 'sum_total_22'
wp option delete 'sum_vat_23'
wp option delete 'sum_total_23'
wp option delete 'sum_vat_24'
wp option delete 'sum_total_24'
wp option delete 'sum_vat_25'
wp option delete 'sum_total_25'
wp option delete 'sum_vat_27'
wp option delete 'sum_total_27'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_activate_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_activate_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_activate_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_activate_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_activate_invoice_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_activate_invoice_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_activate_invoice_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_activate_invoice_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_date_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_date_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_date_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_date_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_date_complate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_date_complate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_date_complate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_date_complate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_customer_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_customer_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_customer_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_customer_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_procent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_procent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_procent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_procent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_place'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_place'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_place'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_place'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_footer_all_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_footer_all_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_footer_all_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_footer_all_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_sent_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_sent_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_sent_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_sent_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_download_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_download_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_download_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_download_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_download_invoice_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_download_invoice_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_download_invoice_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_download_invoice_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_exchange_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_exchange_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_exchange_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_exchange_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_is_EU'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_is_EU'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_is_EU'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_is_EU'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_with_vat_EU'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_with_vat_EU'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_with_vat_EU'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_with_vat_EU'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_vat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_vat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_vat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_vat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_get_fee_exchange_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_get_fee_exchange_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_get_fee_exchange_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_get_fee_exchange_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifv_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifv_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifv_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifv_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gr_code_add'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gr_code_add'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gr_code_add'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gr_code_add'"
