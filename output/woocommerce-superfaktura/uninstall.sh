#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_sf_order_number_notice_hidden'
wp option delete 'woocommerce_sf_api_usage'
wp option delete 'woocommerce_sf_admin_notices'
wp option delete 'woocommerce_sf_invoice_custom_num'
wp option delete 'woocommerce_sf_invoice_proforma_id'
wp option delete 'woocommerce_sf_invoice_regular_id'
wp option delete 'woocommerce_sf_invoice_cancel_id'
wp option delete 'woocommerce_sf_invoice_proforma_manual'
wp option delete 'woocommerce_sf_invoice_regular_manual'
wp option delete 'woocommerce_sf_invoice_download_button_actions'
wp option delete 'woocommerce_sf_add_company_billing_fields'
wp option delete 'woocommerce_sf_add_company_billing_fields_name'
wp option delete 'woocommerce_sf_add_company_billing_fields_id'
wp option delete 'woocommerce_sf_add_company_billing_fields_vat'
wp option delete 'woocommerce_sf_add_company_billing_fields_tax'
wp option delete 'woocommerce_sf_validate_eu_vat_number'
wp option delete 'woocommerce_sf_email_billing_details'
wp option delete 'woocommerce_sf_email_payment_link'
wp option delete 'woocommerce_sf_completed_email_skip_invoice'
wp option delete 'woocommerce_sf_cod_email_skip_invoice'
wp option delete 'woocommerce_sf_email_invoice_link'
wp option delete 'woocommerce_sf_invoice_pdf_attachment'
wp option delete 'woocommerce_sf_prevent_concurrency'
wp option delete 'wpify-woo-settings-general'
wp option delete 'woocommerce_sf_invoice_update_addressbook'
wp option delete 'woocommerce_sf_invoice_delivery_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_sf_shipping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_sf_gateway_%'"
wp option delete 'woocommerce_sf_rounding'
wp option delete 'woocommerce_sf_issued_by'
wp option delete 'woocommerce_sf_issued_phone'
wp option delete 'woocommerce_sf_issued_web'
wp option delete 'woocommerce_sf_issued_email'
wp option delete 'woocommerce_sf_cod_add_rounding_item'
wp option delete 'woocommerce_sf_proforma_invoice_sequence_id'
wp option delete 'woocommerce_sf_invoice_sequence_id'
wp option delete 'woocommerce_sf_cancel_sequence_id'
wp option delete 'woocommerce_sf_logo_id'
wp option delete 'woocommerce_sf_bank_account_id'
wp option delete 'woocommerce_sf_created_date_as_order'
wp option delete 'woocommerce_sf_variable_symbol'
wp option delete 'woocommerce_sf_delivery_date_value'
wp option delete 'woocommerce_sf_comments'
wp option delete 'woocommerce_sf_comment_add_proforma_payment'
wp option delete 'woocommerce_sf_tax_liability'
wp option delete 'woocommerce_sf_comment'
wp option delete 'woocommerce_sf_comment_add_order_note'
wp option delete 'woocommerce_sf_country_settings'
wp option delete 'woocommerce_sf_invoice_language'
wp option delete 'woocommerce_sf_bysquare'
wp option delete 'woocommerce_sf_sync_type'
wp option delete 'woocommerce_sf_sync_secret_key'
wp option delete 'woocommerce_sf_oss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_as_paid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_sf_cash_register_%'"
wp option delete 'woocommerce_sf_product_subtract_refunded_qty'
wp option delete 'woocommerce_sf_coupon_invoice_items'
wp option delete 'woocommerce_sf_discount_name'
wp option delete 'woocommerce_sf_product_description'
wp option delete 'woocommerce_sf_product_description_show_discount'
wp option delete 'woocommerce_sf_item_type_product'
wp option delete 'woocommerce_sf_analytics_account_product'
wp option delete 'woocommerce_sf_synthetic_account_product'
wp option delete 'woocommerce_sf_preconfidence_product'
wp option delete 'woocommerce_sf_skip_free_products'
wp option delete 'woocommerce_sf_item_type_fees'
wp option delete 'woocommerce_sf_analytics_account_fees'
wp option delete 'woocommerce_sf_synthetic_account_fees'
wp option delete 'woocommerce_sf_preconfidence_fees'
wp option delete 'woocommerce_sf_shipping_item_name'
wp option delete 'woocommerce_sf_free_shipping_name'
wp option delete 'woocommerce_sf_item_type_shipping'
wp option delete 'woocommerce_sf_analytics_account_shipping'
wp option delete 'woocommerce_sf_synthetic_account_shipping'
wp option delete 'woocommerce_sf_preconfidence_shipping'
wp option delete 'woocommerce_sf_item_type_discount'
wp option delete 'woocommerce_sf_analytics_account_discount'
wp option delete 'woocommerce_sf_synthetic_account_discount'
wp option delete 'woocommerce_sf_preconfidence_discount'
wp option delete 'woocommerce_sf_invoice_tag'
wp option delete 'woocommerce_sf_retry_failed_api_calls'
wp option delete 'woocommerce_sf_sandbox'
wp option delete 'woocommerce_sf_product_description_visibility'
wp option delete 'woocommerce_sf_invoice_regular_processing_set_as_paid'
wp option delete 'woocommerce_sf_invoice_regular_dont_set_as_paid'
wp option delete 'woocommerce_sf_lang'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_sf_db_version'
wp option delete 'woocommerce_sf_email'
wp option delete 'woocommerce_sf_apikey'
wp option delete 'woocommerce_sf_company_id'
wp option delete 'woocommerce_sf_invoice_regular_processing_skipped_fix'
wp option delete 'woocommerce_sf_product_description_show_coupon_code'
wp option delete 'default_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp option delete 'woocommerce_sf_invoice_count_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_count'"
wp option delete 'woocommerce_sf_order_received_invoice_link'
wp option delete 'woocommerce_sf_invoice_set_as_paid_statuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company_wi_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company_wi_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company_wi_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company_wi_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company_wi_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company_wi_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company_wi_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company_wi_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company_wi_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company_wi_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company_wi_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company_wi_tax'"
