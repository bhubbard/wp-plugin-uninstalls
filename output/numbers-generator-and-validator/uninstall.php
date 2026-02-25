<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ngv_enterprise_activity_report');
delete_site_option('ngv_enterprise_activity_report');
delete_option('new_validator_table');
delete_site_option('new_validator_table');
delete_option('NumbersValidator_your_checked_tables');
delete_site_option('NumbersValidator_your_checked_tables');
delete_option('Ngv_checked_serial_tables');
delete_site_option('Ngv_checked_serial_tables');
delete_option('number_validator');
delete_site_option('number_validator');
delete_option('your_title');
delete_site_option('your_title');
delete_option('your_text');
delete_site_option('your_text');
delete_option('your_checked_tables');
delete_site_option('your_checked_tables');
delete_option('number_validator_shortcode_name');
delete_site_option('number_validator_shortcode_name');
delete_option('NumbersValidator_your_title');
delete_site_option('NumbersValidator_your_title');
delete_option('NumbersValidator_your_text');
delete_site_option('NumbersValidator_your_text');
delete_option('NumbersValidator_shortcode_name');
delete_site_option('NumbersValidator_shortcode_name');
delete_option('NumbersValidator_version');
delete_site_option('NumbersValidator_version');
delete_option('NumbersValidator_response1');
delete_site_option('NumbersValidator_response1');
delete_option('NumbersValidator_response2');
delete_site_option('NumbersValidator_response2');
delete_option('NumbersValidator_fetch');
delete_site_option('NumbersValidator_fetch');
delete_option('NumbersValidator_gen_shortcode');
delete_site_option('NumbersValidator_gen_shortcode');

