<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('niteoCS_page_filter');
delete_site_option('niteoCS_page_filter');
delete_option('niteoCS_bypass_id');
delete_site_option('niteoCS_bypass_id');
delete_option('niteoCS_bypass');
delete_site_option('niteoCS_bypass');
delete_option('niteoCS_bypass_expire');
delete_site_option('niteoCS_bypass_expire');
delete_option('niteoCS_page_whitelist');
delete_site_option('niteoCS_page_whitelist');
delete_option('niteoCS_page_blacklist');
delete_site_option('niteoCS_page_blacklist');
delete_option('niteoCS_roles');
delete_site_option('niteoCS_roles');
delete_option('niteoCS_roles_topbar');
delete_site_option('niteoCS_roles_topbar');
delete_option('niteoCS_theme');
delete_site_option('niteoCS_theme');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%]' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('niteoCS_favicon_id');
delete_site_option('niteoCS_favicon_id');
delete_option('niteoCS_title');
delete_site_option('niteoCS_title');
delete_option('niteoCS_descr');
delete_site_option('niteoCS_descr');
delete_option('niteoCS_analytics');
delete_site_option('niteoCS_analytics');
delete_option('niteoCS_analytics_status');
delete_site_option('niteoCS_analytics_status');
delete_option('niteoCS_analytics_other');
delete_site_option('niteoCS_analytics_other');
delete_option('niteoCS_custom_css');
delete_site_option('niteoCS_custom_css');
delete_option('niteoCS_soc_title');
delete_site_option('niteoCS_soc_title');
delete_option('niteoCS_socialmedia');
delete_site_option('niteoCS_socialmedia');
delete_option('niteoCS_body_title');
delete_site_option('niteoCS_body_title');
delete_option('niteoCS_body');
delete_site_option('niteoCS_body');
delete_option('niteoCS_copyright');
delete_site_option('niteoCS_copyright');
delete_option('niteoCS_URL_redirect');
delete_site_option('niteoCS_URL_redirect');
delete_option('niteoCS_redirect_time');
delete_site_option('niteoCS_redirect_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'niteoCS_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('niteoCS_status');
delete_site_option('niteoCS_status');
delete_option('niteoCS_activation');
delete_site_option('niteoCS_activation');
delete_option('niteoCS_translation');
delete_site_option('niteoCS_translation');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-activation-date' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('niteoCS_subscribe_type');
delete_site_option('niteoCS_subscribe_type');
delete_option('niteoCS_subscribe_code');
delete_site_option('niteoCS_subscribe_code');
delete_option('niteoCS_subscribe_label');
delete_site_option('niteoCS_subscribe_label');
delete_option('niteoCS_contact_form_type');
delete_site_option('niteoCS_contact_form_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%][constellation][color]' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('niteoCS_contact_form_id');
delete_site_option('niteoCS_contact_form_id');
delete_option('niteoCS_subscribers_list');
delete_site_option('niteoCS_subscribers_list');
delete_option('niteoCS_contact_form_label');
delete_site_option('niteoCS_contact_form_label');
delete_option('niteoCS_counter');
delete_site_option('niteoCS_counter');
delete_option('niteoCS_counter_date');
delete_site_option('niteoCS_counter_date');
delete_option('niteoCS_countdown_action');
delete_site_option('niteoCS_countdown_action');
delete_option('niteoCS_countdown_text');
delete_site_option('niteoCS_countdown_text');
delete_option('niteoCS_countdown_redirect');
delete_site_option('niteoCS_countdown_redirect');
delete_option('niteoCS_counter_heading');
delete_site_option('niteoCS_counter_heading');
delete_option('niteoCS_subscribe_method');
delete_site_option('niteoCS_subscribe_method');
delete_option('niteoCS_mailchimp_apikey');
delete_site_option('niteoCS_mailchimp_apikey');
delete_option('niteoCS_mailchimp_list_selected');
delete_site_option('niteoCS_mailchimp_list_selected');
delete_option('niteoCS_mailchimp_lists');
delete_site_option('niteoCS_mailchimp_lists');
delete_option('niteoCS_archive');
delete_site_option('niteoCS_archive');
delete_option('niteoCS_social_location');
delete_site_option('niteoCS_social_location');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_updatecheck', '_site_transient_%_updatecheck' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

