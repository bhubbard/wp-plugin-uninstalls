<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_tax_based_on');
delete_site_option('woocommerce_tax_based_on');
delete_option('wc_stripe_show_customization_notice');
delete_site_option('wc_stripe_show_customization_notice');
delete_option('wc_stripe_show_optimized_checkout_notice');
delete_site_option('wc_stripe_show_optimized_checkout_notice');
delete_option('wc_stripe_show_bnpl_promotion_banner');
delete_site_option('wc_stripe_show_bnpl_promotion_banner');
delete_option('wc_stripe_show_oc_promotion_banner');
delete_site_option('wc_stripe_show_oc_promotion_banner');
delete_option('wc_stripe_show_style_notice');
delete_site_option('wc_stripe_show_style_notice');
delete_option('wc_stripe_show_ssl_notice');
delete_site_option('wc_stripe_show_ssl_notice');
delete_option('wc_stripe_show_keys_notice');
delete_site_option('wc_stripe_show_keys_notice');
delete_option('wc_stripe_show_3ds_notice');
delete_site_option('wc_stripe_show_3ds_notice');
delete_option('wc_stripe_show_phpver_notice');
delete_site_option('wc_stripe_show_phpver_notice');
delete_option('wc_stripe_show_wcver_notice');
delete_site_option('wc_stripe_show_wcver_notice');
delete_option('wc_stripe_show_curl_notice');
delete_site_option('wc_stripe_show_curl_notice');
delete_option('wc_stripe_show_sca_notice');
delete_site_option('wc_stripe_show_sca_notice');
delete_option('wc_stripe_show_changed_keys_notice');
delete_site_option('wc_stripe_show_changed_keys_notice');
delete_option('wc_stripe_show_legacy_deprecation_notice');
delete_site_option('wc_stripe_show_legacy_deprecation_notice');
delete_option('wc_stripe_oauth_required');
delete_site_option('wc_stripe_oauth_required');
delete_option('wc_stripe_show_upe_payment_methods_notice');
delete_site_option('wc_stripe_show_upe_payment_methods_notice');
delete_option('wc_stripe_show_ece_location_notice');
delete_site_option('wc_stripe_show_ece_location_notice');
delete_option('wc_stripe_show_subscription_detached_bulk_action_notice');
delete_site_option('wc_stripe_show_subscription_detached_bulk_action_notice');
delete_option('wc_stripe_show_subscriptions_notice');
delete_site_option('wc_stripe_show_subscriptions_notice');
delete_option('wc_stripe_show_sofort_notice');
delete_site_option('wc_stripe_show_sofort_notice');
delete_option('wc_stripe_show_sofort_upe_notice');
delete_site_option('wc_stripe_show_sofort_upe_notice');
delete_option('wc_stripe_show_payment_methods_notice');
delete_site_option('wc_stripe_show_payment_methods_notice');
delete_option('wc_stripe_show_oauth_required_notice');
delete_site_option('wc_stripe_show_oauth_required_notice');
delete_option('wc_stripe_version');
delete_site_option('wc_stripe_version');
delete_option('woocommerce_gateway_stripe_retention');
delete_site_option('woocommerce_gateway_stripe_retention');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_gateway_order');
delete_site_option('woocommerce_gateway_order');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('wc_stripe_amazon_pay_default_on');
delete_site_option('wc_stripe_amazon_pay_default_on');
delete_option('woocommerce_stripe_subscriptions_legacy_sepa_tokens_updated');
delete_site_option('woocommerce_stripe_subscriptions_legacy_sepa_tokens_updated');
delete_option('wc_stripe_optimized_checkout_default_on');
delete_site_option('wc_stripe_optimized_checkout_default_on');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%oauth_updated_at' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%oauth_failed_attempts' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%oauth_last_failed_at' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('woocommerce_enable_guest_checkout');
delete_site_option('woocommerce_enable_guest_checkout');
delete_option('woocommerce_enable_signup_and_login_from_checkout');
delete_site_option('woocommerce_enable_signup_and_login_from_checkout');
delete_option('woocommerce_enable_signup_from_checkout_for_subscriptions');
delete_site_option('woocommerce_enable_signup_from_checkout_for_subscriptions');
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');
delete_option('woocommerce_registration_generate_password');
delete_site_option('woocommerce_registration_generate_password');
delete_option('woocommerce_checkout_phone_field');
delete_site_option('woocommerce_checkout_phone_field');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('woocommerce_stripe_settings');
delete_site_option('woocommerce_stripe_settings');
delete_option('woocommerce_stripe_affirm_settings');
delete_site_option('woocommerce_stripe_affirm_settings');
delete_option('woocommerce_stripe_afterpay_clearpay_settings');
delete_site_option('woocommerce_stripe_afterpay_clearpay_settings');
delete_option('woocommerce_stripe_alipay_settings');
delete_site_option('woocommerce_stripe_alipay_settings');
delete_option('woocommerce_stripe_bancontact_settings');
delete_site_option('woocommerce_stripe_bancontact_settings');
delete_option('woocommerce_stripe_boleto_settings');
delete_site_option('woocommerce_stripe_boleto_settings');
delete_option('woocommerce_stripe_cashapp_settings');
delete_site_option('woocommerce_stripe_cashapp_settings');
delete_option('woocommerce_stripe_card_settings');
delete_site_option('woocommerce_stripe_card_settings');
delete_option('woocommerce_stripe_eps_settings');
delete_site_option('woocommerce_stripe_eps_settings');
delete_option('woocommerce_stripe_giropay_settings');
delete_site_option('woocommerce_stripe_giropay_settings');
delete_option('woocommerce_stripe_ideal_settings');
delete_site_option('woocommerce_stripe_ideal_settings');
delete_option('woocommerce_stripe_klarna_settings');
delete_site_option('woocommerce_stripe_klarna_settings');
delete_option('woocommerce_stripe_link_settings');
delete_site_option('woocommerce_stripe_link_settings');
delete_option('woocommerce_stripe_multibanco_settings');
delete_site_option('woocommerce_stripe_multibanco_settings');
delete_option('woocommerce_stripe_oxxo_settings');
delete_site_option('woocommerce_stripe_oxxo_settings');
delete_option('woocommerce_stripe_p24_settings');
delete_site_option('woocommerce_stripe_p24_settings');
delete_option('woocommerce_stripe_sepa_settings');
delete_site_option('woocommerce_stripe_sepa_settings');
delete_option('woocommerce_stripe_sepa_debit_settings');
delete_site_option('woocommerce_stripe_sepa_debit_settings');
delete_option('woocommerce_stripe_sofort_settings');
delete_site_option('woocommerce_stripe_sofort_settings');
delete_option('woocommerce_stripe_wechat_pay_settings');
delete_site_option('woocommerce_stripe_wechat_pay_settings');
delete_option('wc_stripe_elements_options');
delete_site_option('wc_stripe_elements_options');
delete_option('wc_stripe_show_styles_notice');
delete_site_option('wc_stripe_show_styles_notice');
delete_option('wc_stripe_show_request_api_notice');
delete_site_option('wc_stripe_show_request_api_notice');
delete_option('wc_stripe_show_apple_pay_notice');
delete_site_option('wc_stripe_show_apple_pay_notice');
delete_option('wc_stripe_show_alipay_notice');
delete_site_option('wc_stripe_show_alipay_notice');
delete_option('wc_stripe_show_bancontact_notice');
delete_site_option('wc_stripe_show_bancontact_notice');
delete_option('wc_stripe_show_eps_notice');
delete_site_option('wc_stripe_show_eps_notice');
delete_option('wc_stripe_show_giropay_notice');
delete_site_option('wc_stripe_show_giropay_notice');
delete_option('wc_stripe_show_ideal_notice');
delete_site_option('wc_stripe_show_ideal_notice');
delete_option('wc_stripe_show_multibanco_notice');
delete_site_option('wc_stripe_show_multibanco_notice');
delete_option('wc_stripe_show_oxxo_notice');
delete_site_option('wc_stripe_show_oxxo_notice');
delete_option('wc_stripe_show_p24_notice');
delete_site_option('wc_stripe_show_p24_notice');
delete_option('wc_stripe_show_sepa_notice');
delete_site_option('wc_stripe_show_sepa_notice');
delete_option('wc_stripe_wh_monitor_began_at');
delete_site_option('wc_stripe_wh_monitor_began_at');
delete_option('wc_stripe_wh_last_success_at');
delete_site_option('wc_stripe_wh_last_success_at');
delete_option('wc_stripe_wh_last_failure_at');
delete_site_option('wc_stripe_wh_last_failure_at');
delete_option('wc_stripe_wh_last_error');
delete_site_option('wc_stripe_wh_last_error');
delete_option('wc_stripe_wh_test_monitor_began_at');
delete_site_option('wc_stripe_wh_test_monitor_began_at');
delete_option('wc_stripe_wh_test_last_success_at');
delete_site_option('wc_stripe_wh_test_last_success_at');
delete_option('wc_stripe_wh_test_last_failure_at');
delete_site_option('wc_stripe_wh_test_last_failure_at');
delete_option('wc_stripe_wh_test_last_error');
delete_site_option('wc_stripe_wh_test_last_error');
delete_option('wc_stripe_oauth_updated_at');
delete_site_option('wc_stripe_oauth_updated_at');
delete_option('wc_stripe_oauth_failed_attempts');
delete_site_option('wc_stripe_oauth_failed_attempts');
delete_option('wc_stripe_oauth_last_failed_at');
delete_site_option('wc_stripe_oauth_last_failed_at');
delete_option('wc_stripe_test_oauth_updated_at');
delete_site_option('wc_stripe_test_oauth_updated_at');
delete_option('wc_stripe_test_oauth_failed_attempts');
delete_site_option('wc_stripe_test_oauth_failed_attempts');
delete_option('wc_stripe_test_oauth_last_failed_at');
delete_site_option('wc_stripe_test_oauth_last_failed_at');
delete_option('_wcstripe_feature_upe');
delete_site_option('_wcstripe_feature_upe');
delete_option('upe_checkout_experience_accepted_payments');
delete_site_option('upe_checkout_experience_accepted_payments');
delete_option('_wcstripe_feature_ece');
delete_site_option('_wcstripe_feature_ece');

// Delete Transients
delete_transient('wc_stripe_level3_not_allowed');
delete_site_transient('wc_stripe_level3_not_allowed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_stripe_sources_%', '_site_transient_stripe_sources_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_stripe_customer_%', '_site_transient_stripe_customer_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wc_stripe_redirect_to_settings');
delete_site_transient('wc_stripe_redirect_to_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_stripe_refresh_connection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

