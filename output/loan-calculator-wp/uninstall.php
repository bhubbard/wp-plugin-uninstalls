<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ww_loan_option');
delete_site_option('ww_loan_option');
delete_option('lc_avoid_notice');
delete_site_option('lc_avoid_notice');
delete_option('lc_rating_notice');
delete_site_option('lc_rating_notice');
delete_option('last_notice_timestamp');
delete_site_option('last_notice_timestamp');
delete_option('plugin_activation_time');
delete_site_option('plugin_activation_time');
delete_option('ww_loan_option[font_family_new_theme]');
delete_site_option('ww_loan_option[font_family_new_theme]');
delete_option('loan_calculator_db_version');
delete_site_option('loan_calculator_db_version');
delete_option('delete_data_enable');
delete_site_option('delete_data_enable');

