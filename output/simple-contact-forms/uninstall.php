<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scf_form');
delete_site_option('scf_form');
delete_option('scf_db_version');
delete_site_option('scf_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'scf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('scf_table_fields');
delete_site_option('scf_table_fields');
delete_option('scf_include_bootstrap');
delete_site_option('scf_include_bootstrap');
delete_option('scf_validation_enable');
delete_site_option('scf_validation_enable');
delete_option('scf_include_recaptcha');
delete_site_option('scf_include_recaptcha');
delete_option('scf_validation');
delete_site_option('scf_validation');
delete_option('scf_send_to');
delete_site_option('scf_send_to');
delete_option('scf_form_title');
delete_site_option('scf_form_title');
delete_option('scf_email_subject');
delete_site_option('scf_email_subject');
delete_option('scf_email_recipients');
delete_site_option('scf_email_recipients');
delete_option('scf_form_styling');
delete_site_option('scf_form_styling');
delete_option('scf_include_fontawesome');
delete_site_option('scf_include_fontawesome');
delete_option('scf_submit_text');
delete_site_option('scf_submit_text');
delete_option('scf_submit_class');
delete_site_option('scf_submit_class');
delete_option('scf_success_msg');
delete_site_option('scf_success_msg');
delete_option('scf_valid_fail_text');
delete_site_option('scf_valid_fail_text');
delete_option('scf_display_button');
delete_site_option('scf_display_button');
delete_option('scf_default_collapse');
delete_site_option('scf_default_collapse');
delete_option('scf_button_text');
delete_site_option('scf_button_text');
delete_option('scf_button_class');
delete_site_option('scf_button_class');
delete_option('scf_button_side');
delete_site_option('scf_button_side');
delete_option('scf_button_icon');
delete_site_option('scf_button_icon');
delete_option('scf_recaptcha_public');
delete_site_option('scf_recaptcha_public');
delete_option('scf_recaptcha_private');
delete_site_option('scf_recaptcha_private');

