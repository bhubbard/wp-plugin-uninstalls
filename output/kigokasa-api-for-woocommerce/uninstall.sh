#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_kigokasa_api_email_from'
wp option delete 'woo_kigokasa_api_email_from_name'
wp option delete 'woo_kigokasa_api_show_migration_notice'
wp option delete 'woo_kigokasa_api_version'
wp option delete 'kigokasa_plugin_version'
wp option delete 'kigokasa_plugin_settings'
wp option delete 'woo_kigokasa_api_settings'
wp option delete 'woo_kigokasa_api_skip_status_order_created'
wp option delete 'woo_kigokasa_api_skip_status_order_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_pos_type-%'"
wp option delete 'woo_kigokasa_api_pin'
wp option delete 'woo_kigokasa_api_shipping_reference'
wp option delete 'woo_kigokasa_api_custom_mapping'
wp option delete 'woo_kigokasa_api_vat_invoices'
wp option delete 'woo_kigokasa_api_username'
wp option delete 'woo_kigokasa_api_password'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_pdf_payment_type-%'"
wp option delete 'woo_kigokasa_api_reply_to'
wp option delete 'woo_kigokasa_api_employee_pin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_payment_type-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_kigokasa_api_vat_invoices_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kigokasa_pos_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kigokasa_pos_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kigokasa_pos_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kigokasa_pos_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kigokasa_doc_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kigokasa_doc_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kigokasa_doc_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kigokasa_doc_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kigokasa_id_pos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kigokasa_id_pos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kigokasa_id_pos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kigokasa_id_pos'"
