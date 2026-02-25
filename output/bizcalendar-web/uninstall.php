<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setrio_bizcal_wsaddr');
delete_site_option('setrio_bizcal_wsaddr');
delete_option('setrio_bizcal_wsuser');
delete_site_option('setrio_bizcal_wsuser');
delete_option('setrio_bizcal_wspass');
delete_site_option('setrio_bizcal_wspass');
delete_option('setrio_bizcal_fake_register');
delete_site_option('setrio_bizcal_fake_register');
delete_option('setrio_bizcal_g_site_key');
delete_site_option('setrio_bizcal_g_site_key');
delete_option('setrio_bizcal_g_secret_key');
delete_site_option('setrio_bizcal_g_secret_key');
delete_option('setrio_bizcal_enable_multiple_locations');
delete_site_option('setrio_bizcal_enable_multiple_locations');
delete_option('setrio_bizcal_phone');
delete_site_option('setrio_bizcal_phone');
delete_option('setrio_bizcal_email');
delete_site_option('setrio_bizcal_email');
delete_option('setrio_bizcal_err_email');
delete_site_option('setrio_bizcal_err_email');
delete_option('setrio_bizcal_show_physician_details');
delete_site_option('setrio_bizcal_show_physician_details');
delete_option('setrio_bizcal_all_caps');
delete_site_option('setrio_bizcal_all_caps');
delete_option('setrio_bizcal_mandatory_email');
delete_site_option('setrio_bizcal_mandatory_email');
delete_option('setrio_bizcal_force_vue');
delete_site_option('setrio_bizcal_force_vue');
delete_option('setrio_bizcal_max_availabilities');
delete_site_option('setrio_bizcal_max_availabilities');
delete_option('setrio_bizcal_force_adminajax');
delete_site_option('setrio_bizcal_force_adminajax');
delete_option('setrio_bizcal_autosel_speciality');
delete_site_option('setrio_bizcal_autosel_speciality');
delete_option('setrio_bizcal_autosel_location');
delete_site_option('setrio_bizcal_autosel_location');
delete_option('setrio_bizcal_autosel_payment_type');
delete_site_option('setrio_bizcal_autosel_payment_type');
delete_option('setrio_bizcal_autosel_service');
delete_site_option('setrio_bizcal_autosel_service');
delete_option('setrio_bizcal_autosel_physician');
delete_site_option('setrio_bizcal_autosel_physician');
delete_option('setrio_bizcal_allow_search_physician');
delete_site_option('setrio_bizcal_allow_search_physician');
delete_option('setrio_bizcal_min_days_to_appointment');
delete_site_option('setrio_bizcal_min_days_to_appointment');
delete_option('setrio_bizcal_max_register_per_ip');
delete_site_option('setrio_bizcal_max_register_per_ip');
delete_option('setrio_bizcal_appointment_email_to');
delete_site_option('setrio_bizcal_appointment_email_to');
delete_option('setrio_bizcal_appointment_email_subject');
delete_site_option('setrio_bizcal_appointment_email_subject');
delete_option('setrio_bizcal_add_service_to_obs');
delete_site_option('setrio_bizcal_add_service_to_obs');
delete_option('setrio_bizcal_appointment_param_order');
delete_site_option('setrio_bizcal_appointment_param_order');
delete_option('setrio_bizcal_speciality_order');
delete_site_option('setrio_bizcal_speciality_order');
delete_option('setrio_bizcal_speciality_order_items');
delete_site_option('setrio_bizcal_speciality_order_items');
delete_option('setrio_bizcal_enable_newsletter');
delete_site_option('setrio_bizcal_enable_newsletter');
delete_option('setrio_bizcal_enable_newsletter_sms');
delete_site_option('setrio_bizcal_enable_newsletter_sms');
delete_option('setrio_bizcal_enable_success_redirect');
delete_site_option('setrio_bizcal_enable_success_redirect');
delete_option('setrio_bizcal_success_redirect_post_id');
delete_site_option('setrio_bizcal_success_redirect_post_id');
delete_option('setrio_bizcal_success_redirect_link');
delete_site_option('setrio_bizcal_success_redirect_link');
delete_option('setrio_bizcal_enable_custom_css');
delete_site_option('setrio_bizcal_enable_custom_css');
delete_option('setrio_bizcal_custom_css');
delete_site_option('setrio_bizcal_custom_css');
delete_option('setrio_bizcal_enable_terms');
delete_site_option('setrio_bizcal_enable_terms');
delete_option('setrio_bizcal_enable_data_policy');
delete_site_option('setrio_bizcal_enable_data_policy');
delete_option('setrio_bizcal_data_policy_post_id');
delete_site_option('setrio_bizcal_data_policy_post_id');
delete_option('setrio_bizcal_terms_post_id');
delete_site_option('setrio_bizcal_terms_post_id');
delete_option('setrio_bizcal_terms_link');
delete_site_option('setrio_bizcal_terms_link');
delete_option('setrio_bizcal_data_policy_link');
delete_site_option('setrio_bizcal_data_policy_link');
delete_option('setrio_bizcal_jquery_ui_params');
delete_site_option('setrio_bizcal_jquery_ui_params');
delete_option('setrio_bizcal_jquery_ui_uploads_path');
delete_site_option('setrio_bizcal_jquery_ui_uploads_path');
delete_option('setrio_bizcal_enable_custom_jquery_ui');
delete_site_option('setrio_bizcal_enable_custom_jquery_ui');
delete_option('setrio_bizcal_vue_params');
delete_site_option('setrio_bizcal_vue_params');
delete_option('setrio_bizcal_enable_custom_vue');
delete_site_option('setrio_bizcal_enable_custom_vue');
delete_option('setrio_bizcal_vue_inline_template');
delete_site_option('setrio_bizcal_vue_inline_template');
delete_option('setrio_bizcal_vue_popup_template');
delete_site_option('setrio_bizcal_vue_popup_template');
delete_option('setrio_bizcal_vue_button_class');
delete_site_option('setrio_bizcal_vue_button_class');
delete_option('setrio_bizcal_vue_button_style');
delete_site_option('setrio_bizcal_vue_button_style');
delete_option('setrio_bizcal_vue_button_type');
delete_site_option('setrio_bizcal_vue_button_type');
delete_option('setrio_bizcal_vue_calendar_type');
delete_site_option('setrio_bizcal_vue_calendar_type');
delete_option('setrio_bizcal_vue_uploads_path');
delete_site_option('setrio_bizcal_vue_uploads_path');
delete_option('setrio_bizcal_vue_params_file');
delete_site_option('setrio_bizcal_vue_params_file');
delete_option('setrio_bizcal_payment_mobilpay_status');
delete_site_option('setrio_bizcal_payment_mobilpay_status');
delete_option('setrio_bizcal_payment_mobilpay_general');
delete_site_option('setrio_bizcal_payment_mobilpay_general');
delete_option('setrio_bizcal_payment_mobilpay_free');
delete_site_option('setrio_bizcal_payment_mobilpay_free');
delete_option('setrio_bizcal_payment_mobilpay_free_cnas');
delete_site_option('setrio_bizcal_payment_mobilpay_free_cnas');
delete_option('setrio_bizcal_payment_mobilpay_test');
delete_site_option('setrio_bizcal_payment_mobilpay_test');
delete_option('setrio_bizcal_payment_mobilpay_admin');
delete_site_option('setrio_bizcal_payment_mobilpay_admin');
delete_option('setrio_bizcal_payment_mobilpay_signature');
delete_site_option('setrio_bizcal_payment_mobilpay_signature');
delete_option('setrio_bizcal_payment_mobilpay_username');
delete_site_option('setrio_bizcal_payment_mobilpay_username');
delete_option('setrio_bizcal_payment_mobilpay_password');
delete_site_option('setrio_bizcal_payment_mobilpay_password');
delete_option('setrio_bizcal_wspass_encr');
delete_site_option('setrio_bizcal_wspass_encr');
delete_option('setrio_bizcal_payment_mobilpay_password_encr');
delete_site_option('setrio_bizcal_payment_mobilpay_password_encr');
delete_option('setrio_bizcal_caps');
delete_site_option('setrio_bizcal_caps');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'setrio_bizcal_caps_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('setrio_bizcal_caching');
delete_site_option('setrio_bizcal_caching');
delete_option('setrio_bizcal_caching_on_fail');
delete_site_option('setrio_bizcal_caching_on_fail');
delete_option('setrio_bizcal_caching_time');
delete_site_option('setrio_bizcal_caching_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'setrio_bizcal_cache_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'setrio_bizcal_cache_time_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('setrio_bizcal_wspass_nodec');
delete_site_option('setrio_bizcal_wspass_nodec');
delete_option('setrio_bizcal_payment_mobilpay_password_nodec');
delete_site_option('setrio_bizcal_payment_mobilpay_password_nodec');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'setrio_bizcal_msg_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('setrio_bizcal_old_version');
delete_site_option('setrio_bizcal_old_version');
delete_option('setrio_bizcal_api_type');
delete_site_option('setrio_bizcal_api_type');
delete_option('setrio_bizcal_caps_speciality');
delete_site_option('setrio_bizcal_caps_speciality');
delete_option('setrio_bizcal_caps_service');
delete_site_option('setrio_bizcal_caps_service');
delete_option('setrio_bizcal_caps_physician');
delete_site_option('setrio_bizcal_caps_physician');
delete_option('setrio_bizcal_caps_payment_type');
delete_site_option('setrio_bizcal_caps_payment_type');
delete_option('setrio_bizcal_caps_location');
delete_site_option('setrio_bizcal_caps_location');
delete_option('setrio-bizcalendar-db-version');
delete_site_option('setrio-bizcalendar-db-version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_setrio_bizcal_appointment_%', '_site_transient_setrio_bizcal_appointment_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_setrio_bizcal_appointment_payment_mobilpay_%', '_site_transient_setrio_bizcal_appointment_payment_mobilpay_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_setrio_bizcal_ip_%', '_site_transient_setrio_bizcal_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

