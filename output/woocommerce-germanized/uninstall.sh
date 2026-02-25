#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_gzd_default_sale_price_label'
wp option delete 'woocommerce_gzd_default_sale_price_regular_label'
wp option delete 'woocommerce_gzd_display_checkout_product_attributes'
wp option delete 'woocommerce_gzd_enable_virtual_vat'
wp option delete 'woocommerce_gzd_hide_tax_rate_shop'
wp option delete 'woocommerce_gzd_differential_taxation_show_notice'
wp option delete 'woocommerce_gzd_product_units_text'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_gzd_default_delivery_time_eu'
wp option delete 'woocommerce_gzd_default_delivery_time_third_countries'
wp option delete 'woocommerce_gzd_default_delivery_time'
wp option delete 'woocommerce_gzd_delivery_time_text'
wp option delete 'woocommerce_gzd_delivery_time_disable_not_in_stock'
wp option delete 'woocommerce_gzd_delivery_time_disable_backorder'
wp option delete 'woocommerce_gzd_customer_activation'
wp option delete 'woocommerce_gzd_disable_notices'
wp option delete 'woocommerce_gzd_is_oss_standalone_update'
wp option delete 'woocommerce_gzd_is_ts_standalone_update'
wp option delete 'woocommerce_gzd_is_shiptastic_standalone_update'
wp option delete '_wc_gzd_has_legal_news'
wp option delete '_wc_gzd_maybe_needs_block_update'
wp option delete '_wc_gzd_setup_installed_shiptastic'
wp option delete '_wc_gzd_setup_shipping_provider_activated'
wp option delete 'oss_use_oss_procedure'
wp option delete 'oss_enable_auto_observation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete '_wc_gzd_activation_redirect'
wp option delete 'woocommerce_gzd_shiptastic_migration_has_errors'
wp option delete 'woocommerce_gzd_shiptastic_migration_errors'
wp option delete 'woocommerce_gzd_shiptastic_ignore_migration_errors'
wp option delete 'woocommerce_gzd_is_shiptastic_dhl_standalone_update'
wp option delete 'woocommerce_gzd_extended_debug_mode'
wp option delete 'woocommerce_gzd_disable_food_options'
wp option delete 'woocommerce_shiptastic_shipper_address_country'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerc_gzd_dhl_import_finished'
wp option delete 'woocommerce_gzd_dhl_internetmarke_enable'
wp option delete 'woocommerce_gzd_internetmarke_import_finished'
wp option delete 'woocommerce_data_security_page_id'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_gzd_tax_mode_additional_costs'
wp option delete 'woocommerce_gzd_display_delivery_time_hidden_types'
wp option delete '_wc_gzd_show_shipping_tax_excl_notice'
wp option delete '_wc_gzd_needs_update'
wp option delete 'woocommerce_gzd_activation_date'
wp option delete 'woocommerce_gzd_customer_cleanup_interval'
wp option delete 'woocommerce_enable_delayed_account_creation'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_revocation_page_id'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'ts_easy_integration_client_id'
wp option delete 'woocommerce_gzd_db_version'
wp option delete 'woocommerce_gzd_display_checkout_fallback'
wp option delete 'woocommerce_gzd_differential_taxation_disallow_mixed_carts'
wp option delete 'woocommerce_gzd_display_checkout_free_shipping_select'
wp option delete 'woocommerce_gzd_checkout_disallow_belated_payment_method_selection'
wp option delete 'woocommerce_gzd_checkout_validate_street_number'
wp option delete 'woocommerce_gzd_photovoltaic_systems_checkout_info'
wp option delete 'woocommerce_gzd_photovoltaic_systems_net_price'
wp option delete 'woocommerce_gzd_photovoltaic_systems_zero_tax_class'
wp option delete 'woocommerce_gzd_display_hide_cart_tax_estimated'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_gzd_display_checkout_free_shipping_excluded'
wp option delete 'woocommerce_gzd_order_pay_now_button'
wp option delete 'woocommerce_gzd_order_pay_now_button_disabled_methods'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_gzd_display_checkout_shipping_rate_select'
wp option delete 'woocommerce_gzd_checkout_address_field'
wp option delete 'woocommerce_gzd_customer_activation_login_disabled'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_gzd_hide_username_with_password'
wp option delete 'woocommerce_gzd_mail_attach_warranties'
wp option delete 'woocommerce_gzd_email_order_confirmation_text'
wp option delete 'woocommerce_gzd_email_title_text'
wp option delete 'woocommerce_gzd_checkout_stop_order_cancellation'
wp option delete 'woocommerce_gzd_differential_taxation_checkout_notices'
wp option delete 'woocommerce_gzd_display_emails_product_units'
wp option delete 'woocommerce_gzd_display_emails_delivery_time'
wp option delete 'woocommerce_gzd_display_emails_product_item_desc'
wp option delete 'woocommerce_gzd_display_emails_product_defect_description'
wp option delete 'woocommerce_gzd_display_emails_product_attributes'
wp option delete 'woocommerce_gzd_display_emails_unit_price'
wp option delete 'woocommerce_gzd_display_emails_deposit_packaging_type'
wp option delete 'woocommerce_gzd_display_emails_deposit'
wp option delete '_wc_gzd_needs_pages'
wp option delete 'woocommerce_gzd_version'
wp option delete 'woocommerce_gzd_shipments_upload_dir_suffix'
wp option delete 'woocommerce_shiptastic_upload_dir_suffix'
wp option delete 'woocommerce_shiptastic_packaging_reports'
wp option delete 'woocommerce_gzd_plugin_header_data'
wp option delete 'woocommerce_direct-debit_settings'
wp option delete 'woocommerce_gzd_legal_checkboxes_settings'
wp option delete 'woocommerce_gzd_order_submit_btn_text'
wp option delete 'woocommerce_gzd_has_legacy_cod_fee'
wp option delete 'woocommerce_gzd_checkout_cod_gateway_fee'
wp option delete 'woocommerce_gzd_checkout_cod_gateway_forwarding_fee'
wp option delete 'woocommerce_gzd_unit_price_enable_variable'
wp option delete 'woocommerce_gzd_has_encryption_error'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_subscriptions_active_version'
wp option delete 'woocommerce_gzd_trusted_review_reminder_days'
wp option delete 'woocommerce_gzd_trusted_shops_review_reminder_days'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_gzd_display_shipping_costs_virtual'
wp option delete 'woocommerce_gzd_display_shipping_costs_hidden_types'
wp option delete 'woocommerce_gzd_trusted_shops_integration_mode'
wp option delete 'woocommerce_gzd_trusted_shops_product_sticker_code'
wp option delete 'woocommerce_gzd_trusted_shops_product_widget_code'
wp option delete 'woocommerce_gzd_checkout_legal_parcel_delivery_checkbox_methods'
wp option delete 'woocommerce_gzd_checkout_legal_text'
wp option delete 'woocommerce_gzd_checkout_legal_text_error'
wp option delete 'woocommerce_gzd_display_checkout_legal_no_checkbox'
wp option delete 'woocommerce_gzd_checkout_legal_digital_checkbox'
wp option delete 'woocommerce_gzd_checkout_legal_text_digital'
wp option delete 'woocommerce_gzd_checkout_legal_text_digital_error'
wp option delete 'woocommerce_gzd_checkout_legal_digital_types'
wp option delete 'woocommerce_gzd_order_confirmation_legal_digital_notice'
wp option delete 'woocommerce_gzd_checkout_legal_service_checkbox'
wp option delete 'woocommerce_gzd_checkout_legal_text_service'
wp option delete 'woocommerce_gzd_checkout_legal_text_service_error'
wp option delete 'woocommerce_gzd_order_confirmation_legal_service_notice'
wp option delete 'woocommerce_gzd_checkout_legal_parcel_delivery_checkbox'
wp option delete 'woocommerce_gzd_checkout_legal_parcel_delivery_checkbox_show'
wp option delete 'woocommerce_gzd_checkout_legal_parcel_delivery_checkbox_required'
wp option delete 'woocommerce_gzd_checkout_legal_text_parcel_delivery'
wp option delete 'woocommerce_gzd_customer_account_checkbox'
wp option delete 'woocommerce_gzd_customer_account_text'
wp option delete 'woocommerce_gzd_hide_tour'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_gzd_hide_tour_%'"
wp option delete 'woocommerce_gzd_trusted_shops_trustbadge_variant'
wp option delete 'woocommerce_gzd_trusted_shops_trustbadge_enable'
wp option delete 'woocommerce_gzd_trusted_shops_enable_reviews'
wp option delete 'woocommerce_gzd_trusted_shops_reviews_enable'
wp option delete 'woocommerce_gzd_display_product_detail_delivery_time_info'
wp option delete 'woocommerce_gzd_display_product_detail_delivery_time'
wp option delete 'woocommerce_gzd_display_product_detail_shipping_costs_info'
wp option delete 'woocommerce_gzd_display_product_detail_shipping_costs'
wp option delete 'woocommerce_gzd_display_product_detail_price_unit'
wp option delete 'woocommerce_gzd_display_product_detail_unit_price'
wp option delete 'woocommerce_gzd_display_listings_shipping_costs_info'
wp option delete 'woocommerce_gzd_display_listings_shipping_costs'
wp option delete 'woocommerce_gzd_display_listings_delivery_time_info'
wp option delete 'woocommerce_gzd_display_listings_delivery_time'
wp option delete 'woocommerce_gzd_display_listings_price_unit'
wp option delete 'woocommerce_gzd_display_listings_unit_price'
wp option delete 'woocommerce_gzd_checkout_phone_non_required'
wp option delete 'woocommerce_gzd_checkout_phone_required'
wp option delete 'woocommerce_gzd_display_single_product_legal'
wp option delete 'woocommerce_gzd_display_product_detail_tax_info'
wp option delete 'woocommerce_gzd_display_single_product_unit_price'
wp option delete 'woocommerce_gzd_display_single_product_delivery_time'
wp option delete 'woocommerce_gzd_display_single_product_units'
wp option delete 'woocommerce_gzd_display_product_detail_product_units'
wp option delete 'woocommerce_gzd_display_product_loop_unit_price'
wp option delete 'woocommerce_gzd_display_product_loop_tax'
wp option delete 'woocommerce_gzd_display_listings_tax_info'
wp option delete 'woocommerce_gzd_display_product_loop_shipping_costs'
wp option delete 'woocommerce_gzd_display_product_loop_delivery_time'
wp option delete 'woocommerce_gzd_display_product_loop_units'
wp option delete 'woocommerce_gzd_display_listings_product_units'
wp option delete 'woocommerce_gzd_dhl_parcel_shops'
wp option delete 'woocommerce_gzd_dhl_parcel_pickup_packstation_enable'
wp option delete 'woocommerce_gzd_dhl_parcel_pickup_parcelshop_enable'
wp option delete 'woocommerce_gzd_dhl_parcel_pickup_postoffice_enable'
wp option delete 'woocommerce_gzd_dhl_parcel_shop_disabled_shipping_methods'
wp option delete 'woocommerce_gzd_dhl_parcel_pickup_shipping_methods_excluded'
wp option delete 'woocommerce_gzd_dhl_parcel_pickup_map_enable'
wp option delete 'woocommerce_gzd_dhl_parcel_shop_finder'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_gzd_dhl_label_tracking_desc'
wp option delete 'woocommerce_gzd_trusted_shops_review_reminder_status'
wp option delete 'woocommerce_gzd_small_enterprise'
wp option delete 'woocommerce_gzd_display_product_detail_small_enterprise'
wp option delete 'woocommerce_gzd_trusted_shops_id'
wp option delete 'woocommerce_gzd_shipping_tax'
wp option delete 'woocommerce_cod_settings'
wp option delete 'woocommerce_gzd_fee_tax'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_gzd_dhl_label_checkout_validate_street_number_address'
wp option delete 'woocommerce_gzd_display_mini_cart_deposit_filter'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_gzd_disable_instant_order_confirmation'
wp option delete 'woocommerce_gzd_mail_attach_order'
wp option delete 'woocommerce_gzd_small_enterprise_text'
wp option delete 'woocommerce_gzd_dispute_resolution_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_gzd_alternative_complaints_text_%'"
wp option delete 'woocommerce_gzd_tax_totals_display'
wp option delete 'woocommerce_gzd_free_shipping_text'
wp option delete 'woocommerce_gzd_shipping_costs_text'
wp option delete 'woocommerce_gzd_differential_taxation_notice_text'
wp option delete 'woocommerce_gzd_price_range_format_text'
wp option delete 'woocommerce_gzd_revocation_address'
wp option delete 'woocommerce_gzd_deposit_text'
wp option delete 'woocommerce_gzd_unit_price_text'
wp option delete 'woocommerce_gzd_tax_mode_additional_costs_detect_main_service'
wp option delete 'woocommerce_gzd_product_ratings_verified'
wp option delete 'woocommerce_gzd_product_rating_verified_text'
wp option delete 'woocommerce_gzd_product_rating_unverified_text'
wp option delete 'woocommerce_gzd_product_review_verified_text'
wp option delete 'woocommerce_gzd_product_review_unverified_text'
wp option delete 'woocommerce_gzd_order_success_text'
wp option delete 'woocommerce_gzd_display_listings_link_details_text'
wp option delete 'woocommerce_gzd_display_digital_delivery_time_text'
wp option delete 'woocommerce_gzd_display_listings_sale_price_labels'
wp option delete 'woocommerce_gzd_display_product_detail_sale_price_labels'
wp option delete 'woocommerce_gzd_display_listings_add_to_cart'
wp option delete 'woocommerce_gzd_display_listings_link_details'
wp option delete 'woocommerce_gzd_display_rating_authenticity_notice'
wp option delete 'woocommerce_gzd_display_review_authenticity_notice'
wp option delete 'woocommerce_gzd_display_checkout_thumbnails'
wp option delete 'woocommerce_gzd_display_checkout_edit_data_notice'
wp option delete 'woocommerce_gzd_display_checkout_back_to_cart_button'
wp option delete 'woocommerce_gzd_hide_order_success_details'
wp option delete 'woocommerce_gzd_display_footer_vat_notice'
wp option delete 'woocommerce_gzd_display_footer_sale_price_notice'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_shiptastic_enable_debug_mode'
wp option delete 'woocommerce_shiptastic_db_version'
wp option delete 'woocommerce_shiptastic_default_shipping_provider'
wp option delete 'woocommerce_shiptastic_return_address_country'
wp option delete 'woocommerce_shiptastic_return_reasons'
wp option delete 'woocommerce_shiptastic_return_address_address_1'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_shiptastic_version'
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'woocommerce_store_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tmp_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result'"
wp option delete 'woocommerce_shiptastic_packaging_reports_running'
wp option delete 'woocommerce_shiptastic_enable_auto_packing'
wp option delete 'woocommerce_shiptastic_packing_balance_weights'
wp option delete 'woocommerce_shiptastic_packing_group_by_shipping_class'
wp option delete 'woocommerce_shiptastic_packing_inner_buffer_type'
wp option delete 'woocommerce_shiptastic_packing_inner_percentage_buffer'
wp option delete 'woocommerce_shiptastic_packing_inner_fixed_buffer'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_shiptastic_has_encryption_error'
wp option delete 'woocommerce_shiptastic_contact_phone'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_pr_dhl_paket_settings'
wp option delete 'woocommerc_stc_dhl_import_finished'
wp option delete '_wcdpi_settings_general'
wp option delete 'woocommerce_stc_internetmarke_import_finished'
wp option delete '_wcdpi_settings_portokasse'
wp option delete '_wcdpi_settings_internetmarke_1c4a'
wp option delete 'woocommerce_shiptastic_dhl_version'
wp option delete 'woocommerce_stc_dhl_enable_legacy_soap'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_shiptastic_dhl_enable_legacy_soap'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_eu_tax_helper_last_rate_changeset'
wp option delete 'woocommerce_gzd_display_checkout_table_color'
wp option delete 'woocommerce_invoice_settings'
wp option delete 'woocommerce_shiptastic_auto_enable'
wp option delete 'woocommerce_gzd_shipments_auto_enable'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_imprint_page_id'
wp option delete 'woocommerce_shipping_costs_page_id'
wp option delete 'woocommerce_payment_methods_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'woocommerce_gzd_deposit_packaging_type_font_size'

# Delete Transients
wp transient delete 'woocommerce_gzd_hook_priorities'
wp transient delete '_wc_gzd_activation_redirect'
wp transient delete '_wc_gzd_setup_wizard_redirect'
wp transient delete '_wc_shiptastic_setup_wizard_redirect'
wp transient delete 'woocommerce_shiptastic_packaging_report_counts'
wp transient delete '_wc_stc_dhl_im_products_refresh_error'
wp transient delete '_wc_stc_dhl_im_page_formats_refresh_error'
wp transient delete 'wc_stc_dhl_portokasse_balance'
wp transient delete 'wc_stc_dhl_im_current_page_formats'
wp transient delete 'woocommerce_stc_dhl_paket_api_access_token'
wp transient delete 'wc_stc_dhl_im_products_expire'

# Clear Cron Jobs
wp cron event delete 'woocommerce_gzd_customer_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'age_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'age_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'age_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'age_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_packaging_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_packaging_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_packaging_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_packaging_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_is_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_is_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_is_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_is_packaging'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_packaging_number_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_packaging_number_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_packaging_number_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_packaging_number_contents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_packaging'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_legal_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_legal_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_legal_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_legal_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mini_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mini_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mini_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mini_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_defect_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_defect_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_defect_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_defect_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formatted_eu_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formatted_eu_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formatted_eu_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formatted_eu_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gzd_activation_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gzd_activation_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gzd_activation_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gzd_activation_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_holder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'direct_debit_bic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit_base'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit_base'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit_base'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit_base'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dimension_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dimension_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dimension_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dimension_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_desc_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_desc_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_desc_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_desc_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_url_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_url_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_url_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_url_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
