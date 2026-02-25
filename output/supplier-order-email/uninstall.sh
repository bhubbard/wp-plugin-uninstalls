#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcisoe_auth_premium'
wp option delete 'mcisoe_email_subject'
wp option delete 'mcisoe_email_intro'
wp option delete 'mcisoe_select_email_admin'
wp option delete 'mcisoe_replace_address'
wp option delete 'mcisoe_delete_all_data'
wp option delete 'mcisoe_header_color'
wp option delete 'mcisoe_store_logo'
wp option delete 'mcisoe_hide_customer'
wp option delete 'mcisoe_show_customer_email'
wp option delete 'mcisoe_show_customer_phone'
wp option delete 'mcisoe_show_shortdesc'
wp option delete 'mcisoe_show_ean'
wp option delete 'mcisoe_show_notes'
wp option delete 'mcisoe_show_order_total'
wp option delete 'mcisoe_show_payment_method'
wp option delete 'mcisoe_show_shipping_method'
wp option delete 'mcisoe_show_price_items'
wp option delete 'mcisoe_show_order_number'
wp option delete 'mcisoe_show_product_attributes'
wp option delete 'mcisoe_show_product_meta'
wp option delete 'mcisoe_show_cost_prices'
wp option delete 'mcisoe_show_cost_total'
wp option delete 'mcisoe_attach_pdf'
wp option delete 'mcisoe_store_pdf'
wp option delete 'mcisoe_company_info'
wp option delete 'mcisoe_special_meta'
wp option delete 'mcisoe_email_copy'
wp option delete 'mcisoe_from_email'
wp option delete 'mcisoe_email_trigger'
wp option delete 'mcisoe_cancel_all_emails'
wp option delete 'mcisoe_show_product_img'
wp option delete 'mcisoe_product_img_width'
wp option delete 'mcisoe_show_weight'
wp option delete 'mcisoe_auth_lemon'
wp option delete 'mcisoe_auth_mciapi'
wp option delete 'mcisoe_new_structure_2_0'
wp option delete 'mci_pay_email'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'mci_pay_code_key'
wp option delete 'mci_user_pass'
wp option delete 'mci_auth_premium'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auth_premium'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lemon_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lemon_instance_id'"
wp option delete 'mcisoe_manual_auth'
wp option delete 'woocommerce_weight_unit'
wp option delete 'orddd_lite_delivery_date_field_label'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'mcisoe_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mcisoe_%'"
wp option delete 'mci_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mcisoe_supplier_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mcisoe_supplier_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mcisoe_supplier_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mcisoe_supplier_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mcisoe_supplier_custom_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mcisoe_supplier_custom_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mcisoe_supplier_custom_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mcisoe_supplier_custom_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mcisoe_supplier_data_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mcisoe_supplier_data_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mcisoe_supplier_data_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mcisoe_supplier_data_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
