#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssbhesabfa_db_version'
wp option delete 'ssbhesabfa_use_export_product_opening_quantity'
wp option delete 'ssbhesabfa_check_for_sync'
wp option delete 'ssbhesabfa_check_orders_for_sync'
wp option delete 'ssbhesabfa_sync_changes_last_date'
wp option delete 'ssbhesabfa_check_for_sync_select'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'ssbhesabfa_contact_automatically_save_in_hesabfa'
wp option delete 'ssbhesabfa_invoice_status'
wp option delete 'ssbhesabfa_payment_status'
wp option delete 'ssbhesabfa_invoice_return_status'
wp option delete 'ssbhesabfa_do_not_submit_product_automatically'
wp option delete 'ssbhesabfa_item_update_price'
wp option delete 'ssbhesabfa_item_update_quantity'
wp option delete 'ssbhesabfa_item_update_quantity_based_on'
wp option delete 'ssbhesabfa_contact_NationalCode_checkbox_hesabfa'
wp option delete 'ssbhesabfa_contact_EconomicCode_checkbox_hesabfa'
wp option delete 'ssbhesabfa_contact_RegistrationNumber_checkbox_hesabfa'
wp option delete 'ssbhesabfa_contact_Website_checkbox_hesabfa'
wp option delete 'ssbhesabfa_contact_Phone_checkbox_hesabfa'
wp option delete 'ssbhesabfa_contact_NationalCode_isRequired_hesabfa'
wp option delete 'ssbhesabfa_contact_EconomicCode_isRequired_hesabfa'
wp option delete 'ssbhesabfa_contact_RegistrationNumber_isRequired_hesabfa'
wp option delete 'ssbhesabfa_contact_Website_isRequired_hesabfa'
wp option delete 'ssbhesabfa_contact_Phone_isRequired_hesabfa'
wp option delete 'ssbhesabfa_contact_check_mobile_and_national_code'
wp option delete 'ssbhesabfa_contact_add_additional_checkout_fields_hesabfa'
wp option delete 'ssbhesabfa_contact_Phone_text_hesabfa'
wp option delete 'ssbhesabfa_contact_NationalCode_text_hesabfa'
wp option delete 'ssbhesabfa_contact_EconomicCode_text_hesabfa'
wp option delete 'ssbhesabfa_contact_RegistrationNumber_text_hesabfa'
wp option delete 'ssbhesabfa_contact_Website_text_hesabfa'
wp option delete 'ssbhesabfa_save_order_option'
wp option delete 'ssbhesabfa_invoice_dokan'
wp option delete 'ssbhesabfa_invoice_save_for_one_person_in_hesabfa'
wp option delete 'ssbhesabfa_invoice_save_for_one_person_in_hesabfa_code'
wp option delete 'ssbhesabfa_contact_address_status'
wp option delete 'ssbhesabfa_set_special_sale_as_discount'
wp option delete 'ssbhesabfa_invoice_freight'
wp option delete 'ssbhesabfa_invoice_freight_code'
wp option delete 'ssbhesabfa_invoice_freight_contact_code'
wp option delete 'ssbhesabfa_invoice_draft_save_in_hesabfa'
wp option delete 'ssbhesabfa_invoice_project'
wp option delete 'ssbhesabfa_invoice_salesman'
wp option delete 'ssbhesabfa_invoice_salesman_percentage'
wp option delete 'ssbhesabfa_check_invoice_by_reference_in_hesabfa'
wp option delete 'ssbhesabfa_hesabfa_default_currency'
wp option delete 'ssbhesabfa_payment_option'
wp option delete 'ssbhesabfa_woocommerce_point_of_sale_active'
wp option delete 'ssbhesabfa_default_payment_method_code'
wp option delete 'ssbhesabfa_cash_in_transit'
wp option delete 'ssbhesabfa_submit_receipt_card'
wp option delete 'ssbhesabfa_delete_old_receipt'
wp option delete 'ssbhesabfa_invoice_transaction_fee'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ssbhesabfa_payment_method_%'"
wp option delete 'ssbhesabfa_set_rpp_for_export_products'
wp option delete 'ssbhesabfa_set_rpp_for_import_products'
wp option delete 'ssbhesabfa_set_rpp_for_export_opening_products'
wp option delete 'ssbhesabfa_set_rpp_for_sync_products_into_woocommerce'
wp option delete 'ssbhesabfa_set_rpp_for_sync_products_into_hesabfa'
wp option delete 'ssbhesabfa_item_update_sale_price'
wp option delete 'ssbhesabfa_last_log_check_id'
wp option delete 'ssbhesabfa_debug_mode'
wp option delete 'ssbhesabfa_set_rpp_for_sync_products_into_hesabfa-rpp'
wp option delete 'ssbhesabfa_debug_mode_checkbox'
wp option delete 'ssbhesabfa_webhook_password'
wp option delete 'ssbhesabfa_live_mode'
wp option delete 'ssbhesabfa_business_expired'
wp option delete 'ssbhesabfa_contact_automatic_save_node_family'
wp option delete 'ssbhesabfa_contact_node_family'
wp option delete 'ssbhesabfa_copy_contact_phone_in_mobile'
wp option delete 'ssbhesabfa_do_not_update_titles_in_hesabfa'
wp option delete 'ssbhesabfa_do_not_update_product_price_in_hesabfa'
wp option delete 'ssbhesabfa_do_not_update_product_barcode_in_hesabfa'
wp option delete 'ssbhesabfa_do_not_update_product_category_in_hesabfa'
wp option delete 'ssbhesabfa_do_not_update_product_product_code_in_hesabfa'
wp option delete 'ssbhesabfa_remove_attributes_titles'
wp option delete 'ssbhesabfa_check_for_sync_auto'
wp option delete 'ssbhesabfa_contact_automaatic_save_node_family'
wp option delete 'ssbhesabfa_activation_date'
wp option delete 'ssbhesabfa_api_address'
wp option delete 'ssbhesabfa_account_api'
wp option delete 'ssbhesabfa_account_username'
wp option delete 'ssbhesabfa_account_password'
wp option delete 'ssbhesabfa_account_login_token'
wp option delete 'ssbhesabfa_inside_product_edit'
wp option delete 'ssbhesabfa_show_hesabfa_code_in_excel_export'
wp option delete 'ssbhesabfa_show_product_code_in_products_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_hesabfa_national_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_hesabfa_national_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_hesabfa_national_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_hesabfa_national_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_hesabfa_economic_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_hesabfa_economic_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_hesabfa_economic_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_hesabfa_economic_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_hesabfa_registeration_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_hesabfa_registeration_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_hesabfa_registeration_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_hesabfa_registeration_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_hesabfa_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_hesabfa_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_hesabfa_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_hesabfa_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_hesabfa_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_hesabfa_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_hesabfa_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_hesabfa_phone'"
