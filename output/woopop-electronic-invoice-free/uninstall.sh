#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_el_inv-general_store_country'
wp option delete 'pop_user_level'
wp option delete 'pms_tax_settings'
wp option delete 'pop_pmpro_enable_tax_calculation'
wp option delete 'pmpro_business_address'
wp option delete 'waf_scheduled_order_status'
wp option delete 'waf_scheduled_events'
wp option delete 'waf_scheduled_twicedaily_events'
wp option delete 'waf_scheduled_events_time'
wp option delete 'waf_scheduled_notifications_events_time'
wp option delete 'waf_error_sending_invoice'
wp option delete 'waf_slack_integration'
wp option delete 'waf_slack_integration_token'
wp option delete 'waf_slack_integration_channel'
wp option delete 'waf_store_login'
wp option delete 'waf_api_url'
wp option delete 'waf_access_token_expires_in'
wp option delete 'waf_api_uid'
wp option delete 'waf_api_key'
wp option delete 'waf_access_token'
wp option delete 'waf_refresh_token'
wp option delete 'wc_el_inv-secret-api-key'
wp option delete 'wfc_use_fic_pdf'
wp option delete 'wfc_invoice_notes'
wp option delete 'wfc_scheduled_order_status'
wp option delete 'wfc_scheduled_events'
wp option delete 'wfc_scheduled_twicedaily_events'
wp option delete 'wfc_disabled_sending_sdi'
wp option delete 'wfc_scheduled_events_time'
wp option delete 'wfc_error_sending_invoice'
wp option delete 'wfc_invoice_shipping_address'
wp option delete 'wfc_revenue_center'
wp option delete 'wfc_data_vat_kind'
wp option delete 'wfc_slack_integration'
wp option delete 'wfc_slack_integration_token'
wp option delete 'wfc_slack_integration_channel'
wp option delete 'wfc_store_login'
wp option delete 'wfc_access_token'
wp option delete 'wfc_api_url'
wp option delete 'wfc_user_info'
wp option delete 'wfc_company_data'
wp option delete 'wfc_company_id'
wp option delete 'wfc_vat_types'
wp option delete 'wfc_payment_methods'
wp option delete 'wfc_payment_accounts'
wp option delete 'wfc_payment_account_active'
wp option delete 'wfc_access_token_expires_in'
wp option delete 'wfc_api_uid'
wp option delete 'wfc_api_key'
wp option delete 'wfc_api_scopes'
wp option delete 'wfc_oauth_state'
wp option delete 'wfc_oauth_code'
wp option delete 'wfc_refresh_token'
wp option delete 'wfc_company_details_permissions'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'wfc_ms_products_last_update_time'
wp option delete 'wfc_ms_products_list'
wp option delete 'wfc_ms_product_codes_list'
wp option delete 'wfc_ms_product_category_by_id_list'
wp option delete 'wfc_ms_product_category_by_cod_list'
wp option delete 'wfc_ms_products_list_last_page'
wp option delete 'wsdipec_scheduled_order_status'
wp option delete 'wsdipec_scheduled_events'
wp option delete 'wsdipec_scheduled_twicedaily_events'
wp option delete 'wsdipec_scheduled_events_time'
wp option delete 'wsdipec_error_sending_invoice'
wp option delete 'wsdipec_smtp_pec_to'
wp option delete 'wsdipec_slack_integration'
wp option delete 'wsdipec_slack_integration_token'
wp option delete 'wsdipec_slack_integration_channel'
wp option delete 'wsdipec_smtp_pass_expiration'
wp option delete 'wsdipec_smtp_connected'
wp option delete 'wsdipec_smtp_configured'
wp option delete 'wsdipec_smtp_user'
wp option delete 'wsdipec_smtp_pass'
wp option delete 'wsdipec_smtp_host'
wp option delete 'wsdipec_smtp_secure'
wp option delete 'pop_account_cached_user_id'
wp option delete 'pop_account_user_id'
wp option delete 'pop_user_level_expiration'
wp option delete 'pop_plugin_module_data'
wp option delete 'pop_plugin_last_check'
wp option delete 'wc_el_inv-addon-fattureincloud'
wp option delete 'wc_el_inv-addon-fattureincloud-stock'
wp option delete 'wc_el_inv-addon-fattureincloud-receipts'
wp option delete 'wc_el_inv-addon-sdi-pec'
wp option delete 'wc_el_inv-addon-aruba'
wp option delete 'wc_el_inv-addon-cozmos'
wp option delete 'wc_el_inv-addon-pmpro'
wp option delete 'wc_el_inv-addon-sdi-via-pop'
wp option delete 'wc_el_inv-addon-peppol-via-pop'
wp option delete 'temp_order_filtered'
wp option delete 'wc_el_inv-general_store_tax_regime'
wp option delete 'wc_el_inv-general_store_your_name'
wp option delete 'wc_el_inv-general_store_your_surname'
wp option delete 'wc_el_inv-general_store_company_name'
wp option delete 'wc_el_inv-general_store_vat_number'
wp option delete 'wc_el_inv-ue_private_normative_reference'
wp option delete 'wc_el_inv-extra_ue_private_normative_reference'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wc_el_inv-enable_pop_webhook'
wp option delete 'pop_plugin_wizard_redirect'
wp option delete 'wc_el_inv-license_check'
wp option delete 'number_next_credit_note'
wp option delete 'number_next_credit_note_receipt'
wp option delete 'wc_el_inv-current_year'
wp option delete 'wc_el_inv-general_store_sm_country'
wp option delete 'pop_review_activation_date'
wp option delete 'wc_el_inv-active_sdipop_integration'
wp option delete 'wc_el_inv-active_peppol_integration'
wp option delete 'wc_el_inv-business_apply_signature'
wp option delete 'wc_el_inv-business_apply_legal_storage'
wp option delete 'wc_el_inv-automatic_sending_status'
wp option delete 'wc_el_inv-enable_automatic_sending'
wp option delete 'wc_el_inv-automatic_sending_time'
wp option delete 'wc_el_inv-peppol_identifier_scheme'
wp option delete 'wc_el_inv-peppol_endpoint_identifier_value'
wp option delete 'wc_el_inv-peppol_legal_entity_uuid'
wp option delete 'wc_el_inv-store_address'
wp option delete 'wc_el_inv-store_address_2'
wp option delete 'wc_el_inv-default_country'
wp option delete 'wc_el_inv-store_city'
wp option delete 'wc_el_inv-store_postcode'
wp option delete 'wc_el_inv-allowed_countries'
wp option delete 'wc_el_inv-all_except_countries'
wp option delete 'wc_el_inv-specific_allowed_countries'
wp option delete 'wc_el_inv-ship_to_countries'
wp option delete 'wc_el_inv-specific_ship_to_countries'
wp option delete 'wc_el_inv-checkout_address_2_field'
wp option delete 'wc_el_inv-checkout_company_field'
wp option delete 'wc_el_inv-checkout_phone_field'
wp option delete 'wc_el_inv-registration_generate_username'
wp option delete 'wc_el_inv_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_your_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_your_surname'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_company_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_vat_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%company_accounting_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_tax_regime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%province_business_register_office'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rea_registration_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%liquidation_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_country'"
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_vat_number_transmitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_phone_transmitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%general_store_email_transmitter'"
wp option delete 'wc_el_inv_valid_vat_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%invoice_vies_check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_disable_reverse_charge'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%global_active_reverse_charge'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reverse_charge_tax_class'"
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wacf_tax_class'
wp option delete 'woocommerce_price_num_decimals'

# Delete Transients
wp transient delete 'wc_el_inv-options-saved-message'
wp transient delete 'wc_el_inv-license_check'
wp transient delete 'pop_xml_files_created'
wp transient delete 'xml_batch_data'
wp transient delete 'xml_files_created'

# Clear Cron Jobs
wp cron event delete 'WooPoPToFattureArubaJobsScheduledSendProformaInvoicePdf'
wp cron event delete 'WooPoPToFattureArubaJobsScheduledNotify'
wp cron event delete 'WooPoPToFattureArubaJobsScheduledUpload'
wp cron event delete 'twiceDailyWooPoPToFattureArubaJobsScheduledUpload'
wp cron event delete 'WooPoPToFattureInCloudJobsScheduledImport'
wp cron event delete 'twiceDailyWooPoPToFattureInCloudJobsScheduledUpload'
wp cron event delete 'popSdiPec_send_password_expiry_email_7_days'
wp cron event delete 'popSdiPec_send_password_expiry_email_1_day'
wp cron event delete 'WooPoPToSdIPecJobsScheduledUpload'
wp cron event delete 'twiceDailyWooPoPToSdIPecJobsScheduledUpload'
wp cron event delete 'PoPToWebhookJobsScheduledImport'
wp cron event delete 'PoPToSDIJobsScheduledImport'
wp cron event delete 'PoPToSDIJobsScheduledNotify'
wp cron event delete 'PoPToPEPPOLJobsScheduledImport'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pms_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pms_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pms_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pms_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pms_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pms_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pms_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pms_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pms_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pms_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pms_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pms_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pms_billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pms_billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pms_billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pms_billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pms_subscription_plan_tax_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pms_subscription_plan_tax_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pms_subscription_plan_tax_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pms_subscription_plan_tax_exempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bcountry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fic_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fic_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fic_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fic_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_product_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_product_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_product_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_product_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_product_stock_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_product_stock_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_product_stock_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_product_stock_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_choice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_choice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_choice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_choice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_sdi_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_sdi_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_sdi_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_sdi_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pop_hide_review_notice_forever'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pop_hide_review_notice_forever'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pop_hide_review_notice_forever'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pop_hide_review_notice_forever'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pop_review_notice_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pop_review_notice_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pop_review_notice_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pop_review_notice_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_active_reverse_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_active_reverse_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_active_reverse_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_active_reverse_charge'"
