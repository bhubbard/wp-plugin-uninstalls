<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_el_inv-general_store_country');
delete_site_option('wc_el_inv-general_store_country');
delete_option('pop_user_level');
delete_site_option('pop_user_level');
delete_option('pms_tax_settings');
delete_site_option('pms_tax_settings');
delete_option('pop_pmpro_enable_tax_calculation');
delete_site_option('pop_pmpro_enable_tax_calculation');
delete_option('pmpro_business_address');
delete_site_option('pmpro_business_address');
delete_option('waf_scheduled_order_status');
delete_site_option('waf_scheduled_order_status');
delete_option('waf_scheduled_events');
delete_site_option('waf_scheduled_events');
delete_option('waf_scheduled_twicedaily_events');
delete_site_option('waf_scheduled_twicedaily_events');
delete_option('waf_scheduled_events_time');
delete_site_option('waf_scheduled_events_time');
delete_option('waf_scheduled_notifications_events_time');
delete_site_option('waf_scheduled_notifications_events_time');
delete_option('waf_error_sending_invoice');
delete_site_option('waf_error_sending_invoice');
delete_option('waf_slack_integration');
delete_site_option('waf_slack_integration');
delete_option('waf_slack_integration_token');
delete_site_option('waf_slack_integration_token');
delete_option('waf_slack_integration_channel');
delete_site_option('waf_slack_integration_channel');
delete_option('waf_store_login');
delete_site_option('waf_store_login');
delete_option('waf_api_url');
delete_site_option('waf_api_url');
delete_option('waf_access_token_expires_in');
delete_site_option('waf_access_token_expires_in');
delete_option('waf_api_uid');
delete_site_option('waf_api_uid');
delete_option('waf_api_key');
delete_site_option('waf_api_key');
delete_option('waf_access_token');
delete_site_option('waf_access_token');
delete_option('waf_refresh_token');
delete_site_option('waf_refresh_token');
delete_option('wc_el_inv-secret-api-key');
delete_site_option('wc_el_inv-secret-api-key');
delete_option('wfc_use_fic_pdf');
delete_site_option('wfc_use_fic_pdf');
delete_option('wfc_invoice_notes');
delete_site_option('wfc_invoice_notes');
delete_option('wfc_scheduled_order_status');
delete_site_option('wfc_scheduled_order_status');
delete_option('wfc_scheduled_events');
delete_site_option('wfc_scheduled_events');
delete_option('wfc_scheduled_twicedaily_events');
delete_site_option('wfc_scheduled_twicedaily_events');
delete_option('wfc_disabled_sending_sdi');
delete_site_option('wfc_disabled_sending_sdi');
delete_option('wfc_scheduled_events_time');
delete_site_option('wfc_scheduled_events_time');
delete_option('wfc_error_sending_invoice');
delete_site_option('wfc_error_sending_invoice');
delete_option('wfc_invoice_shipping_address');
delete_site_option('wfc_invoice_shipping_address');
delete_option('wfc_revenue_center');
delete_site_option('wfc_revenue_center');
delete_option('wfc_data_vat_kind');
delete_site_option('wfc_data_vat_kind');
delete_option('wfc_slack_integration');
delete_site_option('wfc_slack_integration');
delete_option('wfc_slack_integration_token');
delete_site_option('wfc_slack_integration_token');
delete_option('wfc_slack_integration_channel');
delete_site_option('wfc_slack_integration_channel');
delete_option('wfc_store_login');
delete_site_option('wfc_store_login');
delete_option('wfc_access_token');
delete_site_option('wfc_access_token');
delete_option('wfc_api_url');
delete_site_option('wfc_api_url');
delete_option('wfc_user_info');
delete_site_option('wfc_user_info');
delete_option('wfc_company_data');
delete_site_option('wfc_company_data');
delete_option('wfc_company_id');
delete_site_option('wfc_company_id');
delete_option('wfc_vat_types');
delete_site_option('wfc_vat_types');
delete_option('wfc_payment_methods');
delete_site_option('wfc_payment_methods');
delete_option('wfc_payment_accounts');
delete_site_option('wfc_payment_accounts');
delete_option('wfc_payment_account_active');
delete_site_option('wfc_payment_account_active');
delete_option('wfc_access_token_expires_in');
delete_site_option('wfc_access_token_expires_in');
delete_option('wfc_api_uid');
delete_site_option('wfc_api_uid');
delete_option('wfc_api_key');
delete_site_option('wfc_api_key');
delete_option('wfc_api_scopes');
delete_site_option('wfc_api_scopes');
delete_option('wfc_oauth_state');
delete_site_option('wfc_oauth_state');
delete_option('wfc_oauth_code');
delete_site_option('wfc_oauth_code');
delete_option('wfc_refresh_token');
delete_site_option('wfc_refresh_token');
delete_option('wfc_company_details_permissions');
delete_site_option('wfc_company_details_permissions');
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');
delete_option('wfc_ms_products_last_update_time');
delete_site_option('wfc_ms_products_last_update_time');
delete_option('wfc_ms_products_list');
delete_site_option('wfc_ms_products_list');
delete_option('wfc_ms_product_codes_list');
delete_site_option('wfc_ms_product_codes_list');
delete_option('wfc_ms_product_category_by_id_list');
delete_site_option('wfc_ms_product_category_by_id_list');
delete_option('wfc_ms_product_category_by_cod_list');
delete_site_option('wfc_ms_product_category_by_cod_list');
delete_option('wfc_ms_products_list_last_page');
delete_site_option('wfc_ms_products_list_last_page');
delete_option('wsdipec_scheduled_order_status');
delete_site_option('wsdipec_scheduled_order_status');
delete_option('wsdipec_scheduled_events');
delete_site_option('wsdipec_scheduled_events');
delete_option('wsdipec_scheduled_twicedaily_events');
delete_site_option('wsdipec_scheduled_twicedaily_events');
delete_option('wsdipec_scheduled_events_time');
delete_site_option('wsdipec_scheduled_events_time');
delete_option('wsdipec_error_sending_invoice');
delete_site_option('wsdipec_error_sending_invoice');
delete_option('wsdipec_smtp_pec_to');
delete_site_option('wsdipec_smtp_pec_to');
delete_option('wsdipec_slack_integration');
delete_site_option('wsdipec_slack_integration');
delete_option('wsdipec_slack_integration_token');
delete_site_option('wsdipec_slack_integration_token');
delete_option('wsdipec_slack_integration_channel');
delete_site_option('wsdipec_slack_integration_channel');
delete_option('wsdipec_smtp_pass_expiration');
delete_site_option('wsdipec_smtp_pass_expiration');
delete_option('wsdipec_smtp_connected');
delete_site_option('wsdipec_smtp_connected');
delete_option('wsdipec_smtp_configured');
delete_site_option('wsdipec_smtp_configured');
delete_option('wsdipec_smtp_user');
delete_site_option('wsdipec_smtp_user');
delete_option('wsdipec_smtp_pass');
delete_site_option('wsdipec_smtp_pass');
delete_option('wsdipec_smtp_host');
delete_site_option('wsdipec_smtp_host');
delete_option('wsdipec_smtp_secure');
delete_site_option('wsdipec_smtp_secure');
delete_option('pop_account_cached_user_id');
delete_site_option('pop_account_cached_user_id');
delete_option('pop_account_user_id');
delete_site_option('pop_account_user_id');
delete_option('pop_user_level_expiration');
delete_site_option('pop_user_level_expiration');
delete_option('pop_plugin_module_data');
delete_site_option('pop_plugin_module_data');
delete_option('pop_plugin_last_check');
delete_site_option('pop_plugin_last_check');
delete_option('wc_el_inv-addon-fattureincloud');
delete_site_option('wc_el_inv-addon-fattureincloud');
delete_option('wc_el_inv-addon-fattureincloud-stock');
delete_site_option('wc_el_inv-addon-fattureincloud-stock');
delete_option('wc_el_inv-addon-fattureincloud-receipts');
delete_site_option('wc_el_inv-addon-fattureincloud-receipts');
delete_option('wc_el_inv-addon-sdi-pec');
delete_site_option('wc_el_inv-addon-sdi-pec');
delete_option('wc_el_inv-addon-aruba');
delete_site_option('wc_el_inv-addon-aruba');
delete_option('wc_el_inv-addon-cozmos');
delete_site_option('wc_el_inv-addon-cozmos');
delete_option('wc_el_inv-addon-pmpro');
delete_site_option('wc_el_inv-addon-pmpro');
delete_option('wc_el_inv-addon-sdi-via-pop');
delete_site_option('wc_el_inv-addon-sdi-via-pop');
delete_option('wc_el_inv-addon-peppol-via-pop');
delete_site_option('wc_el_inv-addon-peppol-via-pop');
delete_option('temp_order_filtered');
delete_site_option('temp_order_filtered');
delete_option('wc_el_inv-general_store_tax_regime');
delete_site_option('wc_el_inv-general_store_tax_regime');
delete_option('wc_el_inv-general_store_your_name');
delete_site_option('wc_el_inv-general_store_your_name');
delete_option('wc_el_inv-general_store_your_surname');
delete_site_option('wc_el_inv-general_store_your_surname');
delete_option('wc_el_inv-general_store_company_name');
delete_site_option('wc_el_inv-general_store_company_name');
delete_option('wc_el_inv-general_store_vat_number');
delete_site_option('wc_el_inv-general_store_vat_number');
delete_option('wc_el_inv-ue_private_normative_reference');
delete_site_option('wc_el_inv-ue_private_normative_reference');
delete_option('wc_el_inv-extra_ue_private_normative_reference');
delete_site_option('wc_el_inv-extra_ue_private_normative_reference');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('wc_el_inv-enable_pop_webhook');
delete_site_option('wc_el_inv-enable_pop_webhook');
delete_option('pop_plugin_wizard_redirect');
delete_site_option('pop_plugin_wizard_redirect');
delete_option('wc_el_inv-license_check');
delete_site_option('wc_el_inv-license_check');
delete_option('number_next_credit_note');
delete_site_option('number_next_credit_note');
delete_option('number_next_credit_note_receipt');
delete_site_option('number_next_credit_note_receipt');
delete_option('wc_el_inv-current_year');
delete_site_option('wc_el_inv-current_year');
delete_option('wc_el_inv-general_store_sm_country');
delete_site_option('wc_el_inv-general_store_sm_country');
delete_option('pop_review_activation_date');
delete_site_option('pop_review_activation_date');
delete_option('wc_el_inv-active_sdipop_integration');
delete_site_option('wc_el_inv-active_sdipop_integration');
delete_option('wc_el_inv-active_peppol_integration');
delete_site_option('wc_el_inv-active_peppol_integration');
delete_option('wc_el_inv-business_apply_signature');
delete_site_option('wc_el_inv-business_apply_signature');
delete_option('wc_el_inv-business_apply_legal_storage');
delete_site_option('wc_el_inv-business_apply_legal_storage');
delete_option('wc_el_inv-automatic_sending_status');
delete_site_option('wc_el_inv-automatic_sending_status');
delete_option('wc_el_inv-enable_automatic_sending');
delete_site_option('wc_el_inv-enable_automatic_sending');
delete_option('wc_el_inv-automatic_sending_time');
delete_site_option('wc_el_inv-automatic_sending_time');
delete_option('wc_el_inv-peppol_identifier_scheme');
delete_site_option('wc_el_inv-peppol_identifier_scheme');
delete_option('wc_el_inv-peppol_endpoint_identifier_value');
delete_site_option('wc_el_inv-peppol_endpoint_identifier_value');
delete_option('wc_el_inv-peppol_legal_entity_uuid');
delete_site_option('wc_el_inv-peppol_legal_entity_uuid');
delete_option('wc_el_inv-store_address');
delete_site_option('wc_el_inv-store_address');
delete_option('wc_el_inv-store_address_2');
delete_site_option('wc_el_inv-store_address_2');
delete_option('wc_el_inv-default_country');
delete_site_option('wc_el_inv-default_country');
delete_option('wc_el_inv-store_city');
delete_site_option('wc_el_inv-store_city');
delete_option('wc_el_inv-store_postcode');
delete_site_option('wc_el_inv-store_postcode');
delete_option('wc_el_inv-allowed_countries');
delete_site_option('wc_el_inv-allowed_countries');
delete_option('wc_el_inv-all_except_countries');
delete_site_option('wc_el_inv-all_except_countries');
delete_option('wc_el_inv-specific_allowed_countries');
delete_site_option('wc_el_inv-specific_allowed_countries');
delete_option('wc_el_inv-ship_to_countries');
delete_site_option('wc_el_inv-ship_to_countries');
delete_option('wc_el_inv-specific_ship_to_countries');
delete_site_option('wc_el_inv-specific_ship_to_countries');
delete_option('wc_el_inv-checkout_address_2_field');
delete_site_option('wc_el_inv-checkout_address_2_field');
delete_option('wc_el_inv-checkout_company_field');
delete_site_option('wc_el_inv-checkout_company_field');
delete_option('wc_el_inv-checkout_phone_field');
delete_site_option('wc_el_inv-checkout_phone_field');
delete_option('wc_el_inv-registration_generate_username');
delete_site_option('wc_el_inv-registration_generate_username');
delete_option('wc_el_inv_options');
delete_site_option('wc_el_inv_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_your_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_your_surname' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_company_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_vat_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_email' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%company_accounting_email' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_phone' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_tax_regime' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%province_business_register_office' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%rea_registration_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%liquidation_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_country' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_ship_to_countries');
delete_site_option('woocommerce_ship_to_countries');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_vat_number_transmitter' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_phone_transmitter' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%general_store_email_transmitter' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_el_inv_valid_vat_list');
delete_site_option('wc_el_inv_valid_vat_list');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%invoice_vies_check' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%global_disable_reverse_charge' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%global_active_reverse_charge' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%reverse_charge_tax_class' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('wacf_tax_class');
delete_site_option('wacf_tax_class');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

// Delete Transients
delete_transient('wc_el_inv-options-saved-message');
delete_site_transient('wc_el_inv-options-saved-message');
delete_transient('wc_el_inv-license_check');
delete_site_transient('wc_el_inv-license_check');
delete_transient('pop_xml_files_created');
delete_site_transient('pop_xml_files_created');
delete_transient('xml_batch_data');
delete_site_transient('xml_batch_data');
delete_transient('xml_files_created');
delete_site_transient('xml_files_created');

// Clear Cron Jobs
wp_clear_scheduled_hook('WooPoPToFattureArubaJobsScheduledSendProformaInvoicePdf');
wp_clear_scheduled_hook('WooPoPToFattureArubaJobsScheduledNotify');
wp_clear_scheduled_hook('WooPoPToFattureArubaJobsScheduledUpload');
wp_clear_scheduled_hook('twiceDailyWooPoPToFattureArubaJobsScheduledUpload');
wp_clear_scheduled_hook('WooPoPToFattureInCloudJobsScheduledImport');
wp_clear_scheduled_hook('twiceDailyWooPoPToFattureInCloudJobsScheduledUpload');
wp_clear_scheduled_hook('popSdiPec_send_password_expiry_email_7_days');
wp_clear_scheduled_hook('popSdiPec_send_password_expiry_email_1_day');
wp_clear_scheduled_hook('WooPoPToSdIPecJobsScheduledUpload');
wp_clear_scheduled_hook('twiceDailyWooPoPToSdIPecJobsScheduledUpload');
wp_clear_scheduled_hook('PoPToWebhookJobsScheduledImport');
wp_clear_scheduled_hook('PoPToSDIJobsScheduledImport');
wp_clear_scheduled_hook('PoPToSDIJobsScheduledNotify');
wp_clear_scheduled_hook('PoPToPEPPOLJobsScheduledImport');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_country' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pms_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pms_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pms_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pms_billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pms_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pms_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pms_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pms_billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pms_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pms_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pms_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pms_billing_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pms_billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pms_billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pms_billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pms_billing_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pms_subscription_plan_tax_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pms_subscription_plan_tax_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pms_subscription_plan_tax_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pms_subscription_plan_tax_exempt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pmpro_bcountry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pmpro_bcountry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pmpro_bcountry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pmpro_bcountry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fic_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fic_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fic_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fic_client_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_product_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_product_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_product_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_product_stock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_manage_product_stock_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_manage_product_stock_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_manage_product_stock_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_manage_product_stock_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_choice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_choice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_choice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_choice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_invoice_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_sdi_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_sdi_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_sdi_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_sdi_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_vat_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_tax_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pop_hide_review_notice_forever' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pop_hide_review_notice_forever' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pop_hide_review_notice_forever' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pop_hide_review_notice_forever' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pop_review_notice_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pop_review_notice_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pop_review_notice_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pop_review_notice_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_active_reverse_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_active_reverse_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_active_reverse_charge' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_active_reverse_charge' ) );

