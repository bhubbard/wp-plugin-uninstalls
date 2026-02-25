<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lf_recaptcha_v3_site_key');
delete_site_option('lf_recaptcha_v3_site_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lf_custom_css');
delete_site_option('lf_custom_css');
delete_option('lf_authorization_token');
delete_site_option('lf_authorization_token');
delete_option('lf_disclaimer_text');
delete_site_option('lf_disclaimer_text');
delete_option('lf_google_analytics_id');
delete_site_option('lf_google_analytics_id');
delete_option('lf_grow_region');
delete_site_option('lf_grow_region');
delete_option('lf_recaptcha_v3_secret_key');
delete_site_option('lf_recaptcha_v3_secret_key');
delete_option('lf_recaptcha_site_key');
delete_site_option('lf_recaptcha_site_key');
delete_option('lf_recaptcha_secret_key');
delete_site_option('lf_recaptcha_secret_key');
delete_option('lf_thankyou_uri');
delete_site_option('lf_thankyou_uri');
delete_option('lf_successful_submit_message');
delete_site_option('lf_successful_submit_message');
delete_option('lf_domain_blacklist');
delete_site_option('lf_domain_blacklist');
delete_option('lf_form_heading');
delete_site_option('lf_form_heading');
delete_option('lf_firstname_field_label');
delete_site_option('lf_firstname_field_label');
delete_option('lf_firstname_placeholder_label');
delete_site_option('lf_firstname_placeholder_label');
delete_option('lf_lastname_field_label');
delete_site_option('lf_lastname_field_label');
delete_option('lf_lastname_placeholder_label');
delete_site_option('lf_lastname_placeholder_label');
delete_option('lf_email_field_label');
delete_site_option('lf_email_field_label');
delete_option('lf_email_placeholder_label');
delete_site_option('lf_email_placeholder_label');
delete_option('lf_phone_field_label');
delete_site_option('lf_phone_field_label');
delete_option('lf_phone_placeholder_label');
delete_site_option('lf_phone_placeholder_label');
delete_option('lf_message_field_label');
delete_site_option('lf_message_field_label');
delete_option('lf_message_placeholder_label');
delete_site_option('lf_message_placeholder_label');
delete_option('lf_submit_button_text');
delete_site_option('lf_submit_button_text');
delete_option('lf_submit_button_color');
delete_site_option('lf_submit_button_color');
delete_option('lf_submit_button_text_color');
delete_site_option('lf_submit_button_text_color');

