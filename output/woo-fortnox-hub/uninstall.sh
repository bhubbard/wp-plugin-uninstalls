#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fortnox_disable_notices'
wp option delete 'fortnox_send_error_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bank_account'"
wp option delete 'fortnox_hub_manually_refund_credit_invoice'
wp option delete 'fortnox_cost_center'
wp option delete 'fortnox_project'
wp option delete 'fortnox_izettle_customer_number'
wp option delete 'fortnox_valid_to'
wp option delete 'fortnox_authorization_code'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'fortnox_woo_order_creates'
wp option delete 'fortnox_queue_admin_requests'
wp option delete 'fortnox_woo_order_create_order_status_payment_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_woo_order_create_automatic_from_%'"
wp option delete 'fortnox_woo_order_create_automatic_from'
wp option delete 'fortnox_wc_products_include'
wp option delete 'fortnox_wc_get_product_status'
wp option delete 'fortnox_wc_products_product_categories'
wp option delete 'fortnox_wc_products_include_subcategories'
wp option delete 'fortnox_wc_product_update_variable_parent'
wp option delete 'fortnox_wc_product_update_variable_parent_skip_stock_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_send_customer_email_invoice_%'"
wp option delete 'fortnox_send_customer_email_invoice'
wp option delete 'fortnox_invoice_email_bcc'
wp option delete 'fortnox_send_customer_email_invoice_payment_method_specific'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fornox_invoice_email_from_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fornox_invoice_email_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fornox_invoice_email_body_%'"
wp option delete 'fornox_invoice_email_from'
wp option delete 'fornox_invoice_email_subject'
wp option delete 'fornox_invoice_email_body'
wp option delete 'fortnox_wc_custom_order_number_used'
wp option delete 'fortnox_get_inactive_cost_centers'
wp option delete 'fortnox_get_completed_projects'
wp option delete 'fortnox_hub_products_additional_variant_identifier'
wp option delete 'fortnox_wpml_default_currency'
wp option delete 'fortnox_remove_article_numbers_credit_invoice'
wp option delete 'fortnox_account_selling_countries'
wp option delete 'fortnox_refresh_token'
wp option delete 'fortnox_hub_domain'
wp option delete 'fortnox_hub_domain_lock'
wp option delete 'fortnox_enable_access_token_lock'
wp option delete 'fortnox_use_normal_transients'
wp option delete 'fortnox_extra_email_control'
wp option delete 'fortnox_do_not_use_external_refs'
wp option delete 'fortnox_ignore_inactive_customers'
wp option delete 'fortnox_amounts_excl_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_mode_of_payment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_payment_account_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_invoice_payment_remark_%'"
wp option delete 'fortnox_create_invoice_from_order_payment_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_term_of_delivery_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_way_of_delivery_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_shipping_article_number_%'"
wp option delete 'fortnox_shipping_customer_number'
wp option delete 'fortnox_meta_mapping_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_meta_mapping_location_%'"
wp option delete 'fortnox_identify_customers_by'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_meta_mapping_destination_%'"
wp option delete 'fortnox_show_invoices_in_user_area'
wp option delete 'fortnox_use_nox_invoice'
wp option delete 'fortnox_set_warehouseready'
wp option delete 'fortnox_enable_admin_options'
wp option delete 'fortnox_hub_use_v2_api'
wp option delete 'fortnox_fixed_delivery_date'
wp option delete 'fortnox_order_print_template'
wp option delete 'fortnox_order_add_invoice_data'
wp option delete 'fortnox_invoice_print_template'
wp option delete 'woocommerce_tax_based_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_eu_excl_vat%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_eu_incl_vat%'"
wp option delete 'fortnox_world_vat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_vat_fee'"
wp option delete 'fortnox_eu_excl_vat_fee'
wp option delete 'fortnox_eu_incl_vat_fee'
wp option delete 'fortnox_world_fee'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipping'"
wp option delete 'fortnox_eu_excl_vat_shipping'
wp option delete 'fortnox_eu_incl_shipping'
wp option delete 'fortnox_world_shipping'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_send_customer_email_invoice_with_status_%'"
wp option delete 'fortnox_vat_number_means_company'
wp option delete 'fortnox_set_company_if_organisation_number_present'
wp option delete 'fortnox_customer_type'
wp option delete 'wfh_customer_default_delivery_types'
wp option delete 'fortnox_always_show_price_vat_included'
wp option delete 'fortnox_never_show_price_vat_included'
wp option delete 'fortnox_do_not_update_customercard_invoice_email'
wp option delete 'fortnox_do_not_update_customercard_order_email'
wp option delete 'fortnox_delivery_details_on_document_only'
wp option delete 'fortnox_billing_details_on_document_only'
wp option delete 'fortnox_organisation_number_meta'
wp option delete 'fortnox_organisation_number_only'
wp option delete 'fortnox_skip_organisation_number_validation'
wp option delete 'fortnox_skip_vat_number'
wp option delete 'fortnox_clean_vat_number'
wp option delete 'fortnox_do_not_update_customer_billing'
wp option delete 'fortnox_do_not_update_customer_delivery'
wp option delete 'fortnox_do_not_create_customer'
wp option delete 'fortnox_hide_admin_order_meta'
wp option delete 'fortnox_enable_order_cleaning'
wp option delete 'fortnox_include_vat_number_in_search'
wp option delete 'fortnox_use_woocommerce_order_number'
wp option delete 'fortnox_check_invoices_automatically'
wp option delete 'fortnox_woo_order_set_automatic_warehouseready'
wp option delete 'fortnox_delay_emails_until_processed'
wp option delete 'fortnox_create_invoice_from_order'
wp option delete 'fortnox_delay_emails_delay_time'
wp option delete 'fortnox_delay_emails_max_retries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_do_not_sync_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_create_invoice_from_order_%'"
wp option delete 'fortnox_wc_product_bundles'
wp option delete 'fortnox_set_backorder_products_to_zero'
wp option delete 'fortnox_include_bundled_products_price'
wp option delete 'fortnox_no_articlenumber_in_orderrow'
wp option delete 'fortnox_use_article_account_for_order_rows_first'
wp option delete 'fortnox_set_discount_to_zero'
wp option delete 'fortnox_skip_shipping_in_description'
wp option delete 'fortnox_always_populate_shipping'
wp option delete 'fortnox_document_use_coupon_rows'
wp option delete 'fortnox_do_not_clear_freight'
wp option delete 'fortnox_document_date'
wp option delete 'fortnox_default_delivery_days'
wp option delete 'fortnox_customer_note_place'
wp option delete 'fornox_our_reference'
wp option delete 'fortnox_language'
wp option delete 'fortnox_do_not_clear_cost_center'
wp option delete 'fortnox_set_administration_fee'
wp option delete 'fortnox_administration_fee'
wp option delete 'fortnox_skip_delivery_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_term_of_payment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_invoice_payment_custom_remark_%'"
wp option delete 'fortnox_order_copy_remarks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_order_print_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_invoice_print_template_%'"
wp option delete 'fortnox_cancel_warehouseready_for_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_meta_mapping_include_field_name_%'"
wp option delete 'fortnox_sync_from_fortnox_automatically'
wp option delete 'fortnox_daily_sync_from_fortnox'
wp option delete 'fortnox_last_sync_products'
wp option delete 'fortnox_maybe_change_stock_place'
wp option delete 'fortnox_handle_inactive_articles'
wp option delete 'fortnox_create_simple_product_from_article'
wp option delete 'fortnox_delete_wc_product'
wp option delete 'fortnox_update_webshop_articles_only'
wp option delete 'fortnox_delete_inactive_variants'
wp option delete 'fortnox_create_simple_product_from_article_category'
wp option delete 'fortnox_create_simple_product_from_article_status'
wp option delete 'fortnox_process_price'
wp option delete 'fortnox_process_sale_price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_process_price_b2bk_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_process_sale_price_b2bk_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_process_wholesale_price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_process_wcpbc_%'"
wp option delete 'fortnox_maybe_change_manage_stock'
wp option delete 'fortnox_process_stocklevel'
wp option delete 'fortnox_maybe_change_wc_product_name'
wp option delete 'fortnox_maybe_change_product_dimensions'
wp option delete 'fortnox_maybe_change_manufacturer'
wp option delete 'fortnox_maybe_change_manufacturer_article_number'
wp option delete 'fortnox_maybe_change_default_stock_location'
wp option delete 'fortnox_maybe_change_unit'
wp option delete 'fortnox_maybe_change_barcode'
wp option delete 'fortnox_maybe_change_purchase_price'
wp option delete 'fortnox_create_products_automatically'
wp option delete 'fortnox_hub_save_post_on_article_update'
wp option delete 'fortnox_remove_vat_from_prices'
wp option delete 'fortnox_handle_zero_price'
wp option delete 'fortnox_backorder_option_instock'
wp option delete 'fortnox_backorder_option_outofstock'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'fortnox_capture_klarna_orders'
wp option delete 'fortnox_hub_accelerate_connection'
wp option delete 'fortnox_hub_sync_last_sync_invoices'
wp option delete 'fortnox_fortnox_set_order_status'
wp option delete 'fortnox_book_invoice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_bookkeep_orders_with_status_%'"
wp option delete 'fortnox_set_invoice_as_external_printed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_set_invoice_as_external_printed_when_order_has_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_book_invoice_%'"
wp option delete 'fortnox_skip_processing_zero_orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_set_invoice_as_external_printed_%'"
wp option delete 'fortnox_use_customer_default_send_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_fortnox_set_order_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_automatic_payment_%'"
wp option delete 'fortnox_delete_invoice_file_payments'
wp option delete 'fortnox_capture_ledyer_orders'
wp option delete 'fortnox_strict_order_matching'
wp option delete 'fortnox_document_use_fee_field'
wp option delete 'fortnox_document_use_shipping_field'
wp option delete 'fortnox_hub_enable_invoice_rows_against_order_check'
wp option delete 'fortnox_force_create_order'
wp option delete 'fortnox_wc_product_update_stock_level'
wp option delete 'fortnox_hub_always_do_subsequent_credit_invoice'
wp option delete 'fortnox_hub_credit_override_template'
wp option delete 'fortnox_sync_wc_products_daily'
wp option delete 'fortnox_create_products_from_wc'
wp option delete 'fortnox_warehouse_apply_primary_stockplace_to_all_products'
wp option delete 'fortnox_warehouse_primary_stockplace'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_wc_product_pricelist_b2bk_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_wc_product_sale_pricelist_b2bk_%'"
wp option delete 'fortnox_wc_product_pricelist'
wp option delete 'fortnox_wc_product_sale_pricelist'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wholesale_price'"
wp option delete 'fortnox_wc_product_name'
wp option delete 'fortnox_wc_product_webshop_article'
wp option delete 'fortnox_wc_product_description'
wp option delete 'fortnox_wc_product_update_stock_data'
wp option delete 'fortnox_wc_product_update_product_dimensions'
wp option delete 'fortnox_wc_product_update_type'
wp option delete 'fortnox_wc_product_update_manufacturer'
wp option delete 'fortnox_wc_product_update_manufacturer_article_number'
wp option delete 'fortnox_wc_product_update_stock_place'
wp option delete 'fortnox_wc_product_update_ean'
wp option delete 'fortnox_wc_product_update_unit'
wp option delete 'fortnox_wc_product_update_sales_account'
wp option delete 'fortnox_se_purchase_account'
wp option delete 'fortnox_wc_product_update_purchase_price'
wp option delete 'fortnox_last_wc_product_sync_done'
wp option delete 'fortnox_enable_housework'
wp option delete 'fortnox_hub_disable_credit_invoice_download'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'fortnox_warehouse_show_stockplaces'
wp option delete 'fortnox_warehouse_show_wc_stock'
wp option delete 'fortnox_warehouse_woo_stock_place_name'
wp option delete 'fortnox_warehouse_show_total_stock'
wp option delete 'fortnox_warehouse_show_stockplaces_filter'
wp option delete 'woocommerce_stock_format'
wp option delete 'fortnox_user_email'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'fortnox_pwgc_giftcard_sales_account'
wp option delete 'fortnox_wcgc_giftcard_sales_account'
wp option delete 'fortnox_ywgc_giftcard_sales_account'
wp option delete 'fortnox_zettle_gc_giftcard_sales_account'
wp option delete 'fortnox_update_klarna_merchant_reference'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customer_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_voucher_serie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_balance_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_document_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fee_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payouts_automatically'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_reversed_vat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_book_included_invoice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_included_invoice_to_paid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_payout_voucher_history_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_advanced_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_included_invoice_to_paid_credit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_outgoing_reversed_vat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_incoming_calculated_vat'"
wp option delete 'woocommerce_kco_settings'
wp option delete 'woocommerce_klarna_payments_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commission_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_vat_from_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fee_vat_account'"
wp option delete 'test_mode'
wp option delete 'dibs_test_key'
wp option delete 'dibs_live_key'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'fortnox_create_paypal_invoices'
wp option delete 'fortnox_payment_account_paypal'
wp option delete 'fortnox_mode_of_payment_paypal'
wp option delete 'fortnox_automatic_payment_paypal'
wp option delete 'fortnox_paypal_customer_number'
wp option delete 'fortnox_paypal_balance_account'
wp option delete 'fortnox_paypal_fee_account'
wp option delete 'fkwcs_mode'
wp option delete 'fkwcs_test_secret_key'
wp option delete 'fkwcs_secret_key'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'fortnox_stripe_payouts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret_test'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret_prod'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payout_include_fees'"
wp option delete 'fortnox_create_izettle_payout_invoices'
wp option delete 'fortnox_izettle_fee_account'
wp option delete 'fortnox_payment_account_izettle_card'
wp option delete 'fortnox_log_zettle_traffic'
wp option delete 'fortnox_wc_product_update_variable_parent_enrich_only_variant'
wp option delete 'fortnox_metadata_mapping_ean'
wp option delete 'fortnox_hub_access_token_lock'
wp option delete 'fortnox_api_timeout'
wp option delete 'fortnox_hub_bypass_proxy'
wp option delete 'fortnox_hub_use_v2_api_header_entity'
wp option delete 'fortnox_tenant_uuid'
wp option delete 'fortnox_gmt_offset'
wp option delete 'fortnox_hub_log_requests'
wp option delete 'fortnox_hub_dont_use_improved_curl'
wp option delete 'fortnox_warehouse_use_new_api'
wp option delete 'fortnox_logging'
wp option delete 'fortnox_enable_svea_order_ref'
wp option delete 'fortnox_svea_payouts'
wp option delete 'fortnox_clearhaus_payouts'
wp option delete 'fortnox_service_url'
wp option delete 'fortnox_manual_cron'
wp option delete 'fortnox_hub_version'
wp option delete 'bjorntech_alternate_webhook_url'
wp option delete 'fortnox_market_url'

# Delete Transients
wp transient delete 'fortnox_failed_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortnox_terms_of_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortnox_terms_of_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortnox_terms_of_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortnox_terms_of_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortnox_warehouse_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortnox_warehouse_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortnox_warehouse_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortnox_warehouse_summary'"
