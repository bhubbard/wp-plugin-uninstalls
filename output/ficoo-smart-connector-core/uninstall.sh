#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ficoo_core_option_plugin_version'
wp option delete 'ficoo_core_option_enabled_documents_on_checkout'
wp option delete 'ficoo_core_option_enable_mandatory_invoice'
wp option delete 'ficoo_core_option_hide_invoice_to_private'
wp option delete 'ficoo_core_option_document_rc_center'
wp option delete 'ficoo_core_option_show_payments_on_document'
wp option delete 'ficoo_core_option_show_payment_methods_on_document'
wp option delete 'ficoo_core_option_use_gross_prices'
wp option delete 'ficoo_core_option_document_numeration'
wp option delete 'ficoo_core_option_document_hidden_subject'
wp option delete 'ficoo_core_option_document_visible_subject'
wp option delete 'ficoo_core_option_enable_e_invoice'
wp option delete 'ficoo_core_option_use_shipping_country_for_billing'
wp option delete 'ficoo_core_option_show_product_attributes_on_document'
wp option delete 'ficoo_core_option_show_product_short_description_on_document'
wp option delete 'ficoo_core_option_woocommerce_active_tax_rates_and_fatture_in_cloud_tax_rates_match'
wp option delete 'ficoo_core_option_default_tax_rate_selected'
wp option delete 'ficoo_core_option_fatture_in_cloud_tax_rates'
wp option delete 'ficoo_core_option_apply_discount_on_product_rows'
wp option delete 'ficoo_apply_invoice_stamp_select'
wp option delete 'ficoo_core_option_document_notes'
wp option delete 'ficoo_core_option_woocommerce_active_payment_methods_and_fatture_in_cloud_balance_account_match'
wp option delete 'ficoo_core_option_woo_payment_methods_fic_payment_methods_match'
wp option delete 'ficoo_core_option_default_fic_payment_method_for_document'
wp option delete 'ficoo_core_option_bacs_due_date_in_days'
wp option delete 'ficoo_core_option_default_fic_balance_account'
wp option delete 'ficoo_core_option_user_company_ids'
wp option delete 'ficoo_core_option_fatture_in_cloud_payment_methods'
wp option delete 'ficoo_core_option_fatture_in_cloud_balance_accounts'
wp option delete 'ficoo_core_option_fic_product_categories'
wp option delete 'ficoo_core_option_email_monitoring_list'
wp option delete 'ficoo_core_option_default_user_company_id'
wp option delete 'ficoo_core_option_need_initia_sync'
wp option delete 'ficoo_core_option_log_file_selected'
wp option delete 'ficoo_core_option_there_is_a_new_log'
wp option delete 'ficoo_core_option_id_order_selected'
wp option delete 'ficoo_core_option_enable_debug_mode'
wp option delete 'ficoo_core_option_refresh_token'
wp option delete 'ficoo_core_option_access_token'
wp option delete 'ficoo_core_option_woocommerce_active_payment_methods'
wp option delete 'ficoo_core_option_woocommerce_active_tax_rates'
wp option delete 'ficoo_pro_option_enable_vat_regex_validation'
wp option delete 'ficoo_pro_option_set_vat_exempion_for_foreign_business'
wp option delete 'ficoo_pro_option_enable_taxcode_validation'
wp option delete 'ficoo_core_option_enable_mandatory_vat_number'
wp option delete 'ficoo_core_option_enable_mandatory_tax_code'
wp option delete 'ficoo_core_option_enable_checkout_style'
wp option delete 'fiscal_fields_cleaned_v2'
wp option delete 'ficoo_core_option_hide_tax_code'
wp option delete 'ficoo_core_option_hide_email_pec'
wp option delete 'ficoo_pro_option_set_document_for_eu_countries'
wp option delete 'ficoo_pro_option_set_document_for_extra_eu_countries'
wp option delete 'ficoo_pro_option_set_tax_code_mandatory'
wp option delete 'ficoo_core_option_csv_export_value_delimiter'
wp option delete 'ficoo_core_option_email_autosend_on_orders'
wp option delete 'ficoo_core_option_email_autosend_email_subject'
wp option delete 'ficoo_core_option_email_autosend_email_body'
wp option delete 'ficoo_core_option_email_autosend_document_button'
wp option delete 'ficoo_core_option_email_autosend_attach_pdf'
wp option delete 'ficoo_core_option_email_autosend_copy_cc'
wp option delete 'ficoo_core_option_email_autosend_sender_email_address'
wp option delete 'ficoo_core_option_create_document_if_total_is_zero'
wp option delete 'ficoo_core_option_device_code'
wp option delete 'ficoo_core_option_last_token_refresh_time'
wp option delete 'ficoo_core_option_create_customer_master_data'
wp option delete 'ficoo_core_option_compatibility_with_woofatture'
wp option delete 'ficoo_core_option_use_shipping_country_for_vat_calculation'
wp option delete 'ficoo_core_option_auto_send_document'
wp option delete 'ficoo_core_option_autosend_document_order_status'
wp option delete 'ficoo_core_option_enable_vat_regex_validation'
wp option delete 'ficoo_core_option_default_document_on_checkout'
wp option delete 'external_updates-ficoo-smart-connector-core'

# Delete Transients
wp transient delete 'ficoo_core_last_version_check'

# Clear Cron Jobs
wp cron event delete 'ficoo_core_action___cron_refresh_token___'
wp cron event delete 'ficoo_core_action___cron_check_invoices_sdi_status___'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ficoo_user_meta_entity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ficoo_user_meta_entity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ficoo_user_meta_entity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ficoo_user_meta_entity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ficoo_document_type_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ficoo_document_type_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ficoo_document_type_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ficoo_document_type_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ficoo_customer_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ficoo_customer_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ficoo_customer_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ficoo_customer_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ficoo_customer_tax_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ficoo_customer_tax_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ficoo_customer_tax_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ficoo_customer_tax_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ficoo_customer_email_pec'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ficoo_customer_email_pec'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ficoo_customer_email_pec'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ficoo_customer_email_pec'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_ficoo_customer_recipient_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_ficoo_customer_recipient_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_ficoo_customer_recipient_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_ficoo_customer_recipient_code'"
