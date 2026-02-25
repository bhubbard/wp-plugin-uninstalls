-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_pklist_new_install', 'woocommerce_myaccount_page_id', 'wt_pklist_banner_after_bulk_print_ipc', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'wt_pklist_common_modules', 'wt_pklist_admin_modules', 'wt_pklist_languages_list', 'woocommerce_currency_pos', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_tax_display_cart', 'invoice_empty_count', 'wt_pklist_installation_date', 'wt_created_document_count', 'wt_created_invoice_document_count', 'wt_pklist_start_date', 'wt_pklist_dismissible_banners', 'wt_pklist_import_date', 'wf_pklist_templates_migrated', 'wt_pklist_reset_date', 'wt_pklist_save_default_templates', 'woocommerce_prices_include_tax', 'woocommerce_calc_taxes', 'Wf_Woocommerce_Packing_List', 'wt_newsletter_banner_hidden', 'wt_hide_gdpr_cta_banner', 'wt_gdpr_promotion_banner_state', 'active_sitewide_plugins', 'woocommerce_allowed_countries', 'woocommerce_specific_allowed_countries', 'woocommerce_all_except_countries', 'wbfte_promotion_banner_version', 'wt_hide_invoice_cta_banner', 'wt_hide_smart_coupon_cta_banner', 'wt_hide_product_ie_cta_banner', 'woocommerce_calc_shipping', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'wf_pklist_module_status_migrated', 'wf_invoice_active_key', 'woocommerce_wf_packinglist_footer_in', 'wf_pklist_options_migrated', 'woocommerce_wf_packinglist_companyname', 'wf_pklist_new_install', 'woocommerce_custom_orders_table_data_sync_enabled');
DELETE FROM wp_options WHERE option_name IN ('wt_review_request_banner_state', 'wfpklist_basic_version', 'wfpklist_basic_version_prev', 'wt_pklist_pdf_settings_ubl_taxes', 'woocommerce_email_from_address', 'woocommerce_store_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wt_pklist_doc_create_dont_show_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('wt_pklist_doc_create_dont_show_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('wt_pklist_doc_create_dont_show_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wt_pklist_doc_create_dont_show_popup');

