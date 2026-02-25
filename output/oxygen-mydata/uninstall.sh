#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oxygen_woo_plugin_activation_error'
wp option delete 'oxygen_api_key'
wp option delete 'oxygen_only_receipts'
wp option delete 'oxygen_enable_intra_community_invoice'
wp option delete 'oxygen_mydata_category_tpda'
wp option delete 'oxygen_mydata_tpda_classification_type'
wp option delete 'oxygen_mydata_category_tpy'
wp option delete 'oxygen_mydata_tpy_classification_type'
wp option delete 'oxygen_num_sequence_tpy'
wp option delete 'oxygen_num_sequence_tpda'
wp option delete 'oxygen_mydata_category_receipt_alp'
wp option delete 'oxygen_mydata_classification_type_alp'
wp option delete 'oxygen_mydata_category_receipt_apy'
wp option delete 'oxygen_mydata_classification_type_apy'
wp option delete 'oxygen_num_sequence_apy'
wp option delete 'oxygen_num_sequence_alp'
wp option delete 'oxygen_mydata_category_tpda_intra'
wp option delete 'oxygen_mydata_classification_type_tpda_intra'
wp option delete 'oxygen_mydata_category_tpy_intra'
wp option delete 'oxygen_mydata_classification_type_tpy_intra'
wp option delete 'oxygen_intra_community_tax_invoices'
wp option delete 'oxygen_debug'
wp option delete 'oxygen_default_receipt_alp'
wp option delete 'oxygen_default_receipt_apy'
wp option delete 'oxygen_receipt_print_type'
wp option delete 'oxygen_default_invoice_tpda'
wp option delete 'oxygen_default_invoice_tpy'
wp option delete 'oxygen_self_fields'
wp option delete 'oxygen_vat_metakey'
wp option delete 'oxygen_working_field_metakey'
wp option delete 'oxygen_tax_office'
wp option delete 'oxygen_issue_invoice_metakey'
wp option delete 'oxygen_fetch_vat_fields'
wp option delete 'oxygen_endokoinotiko_invoice_category_pwlisis'
wp option delete 'oxygen_endokoinotiko_classification_type_pwlisis'
wp option delete 'oxygen_default_intra_sell'
wp option delete 'oxygen_endokoinotiko_invoice_category_paroxis'
wp option delete 'oxygen_endokoinotiko_classification_type_paroxis'
wp option delete 'oxygen_default_intra_paroxis'
wp option delete 'oxygen_logo'
wp option delete 'oxygen_language'
wp option delete 'oxygen_shipping_code'
wp option delete 'oxygen_order_attachment'
wp option delete 'oxygen_order_status'
wp option delete 'oxygen_products_variations'
wp option delete 'oxygen_payment_order_status'
wp option delete 'oxygen_payment_default'
wp option delete 'oxygen_status'
wp option delete 'oxygen_mydata_classification_type_tpda'
wp option delete 'oxygen_mydata_classification_type_tpy'
wp option delete 'oxygen_mydata_category_alp'
wp option delete 'oxygen_mydata_category_apy'
wp option delete 'oxygen_default_receipt_type'
wp option delete 'oxygen_default_invoice_type'
wp option delete 'oxygen_default_intra_type'
wp option delete 'oxygen_enable_shipping_data'
wp option delete 'oxygen_measurement_unit_default'
wp option delete '_oxygen_payment_note_type'
wp option delete 'oxygen_mydata_classification_type_shipping'
wp option delete 'oxygen_taxes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oxygen_mydata_category%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oxygen_mydata_classification_type%'"
wp option delete 'oxygen_is_paid'
wp option delete 'oxygen_move_purpose'
wp option delete 'oxygen_other_move_purpose_title'
wp option delete 'oxygen_vehicle_number'
wp option delete 'oxygen_shipping_comments'
wp option delete 'oxygen_pickup_branch_code'
wp option delete 'oxygen_pickup_street'
wp option delete 'oxygen_pickup_address_number'
wp option delete 'oxygen_pickup_postal_code'
wp option delete 'oxygen_pickup_city'
wp option delete 'oxygen_pickup_country'
wp option delete 'woocommerce_oxygen_payment_settings'

# Delete Transients
wp transient delete 'oxygen_user_meta_keys'
wp transient delete 'oxygen_api_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_alp_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_apy_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpda_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_cat_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_cat_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_mydata_clas_type_tpy_intra_product_panel_cat_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oxygen_wc_measurement_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oxygen_wc_measurement_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oxygen_wc_measurement_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oxygen_wc_measurement_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_office'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oxygen_has_receipt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oxygen_has_receipt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oxygen_has_receipt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oxygen_has_receipt_id'"
