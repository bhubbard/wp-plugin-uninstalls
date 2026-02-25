<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pelecard_pay_Buttons_termNo');
delete_site_option('pelecard_pay_Buttons_termNo');
delete_option('pelecard_pay_Buttons_username');
delete_site_option('pelecard_pay_Buttons_username');
delete_option('pelecard_pay_Buttons_password');
delete_site_option('pelecard_pay_Buttons_password');
delete_option('pelecard_pay_Buttons_max_Payments');
delete_site_option('pelecard_pay_Buttons_max_Payments');
delete_option('pelecard_pay_Buttons_logo');
delete_site_option('pelecard_pay_Buttons_logo');
delete_option('pelecard_pay_Buttons_smallLogo');
delete_site_option('pelecard_pay_Buttons_smallLogo');
delete_option('pelecard_pay_Buttons_hidePciDssLogo');
delete_site_option('pelecard_pay_Buttons_hidePciDssLogo');
delete_option('pelecard_pay_Buttons_hidePelecardLogo');
delete_site_option('pelecard_pay_Buttons_hidePelecardLogo');
delete_option('pelecard_pay_Buttons_css');
delete_site_option('pelecard_pay_Buttons_css');
delete_option('pelecard_pay_Buttons_success_url');
delete_site_option('pelecard_pay_Buttons_success_url');
delete_option('pelecard_pay_Buttons_error_url');
delete_site_option('pelecard_pay_Buttons_error_url');
delete_option('pelecard_pay_Buttons_currency');
delete_site_option('pelecard_pay_Buttons_currency');
delete_option('pelecard_pay_Buttons_Background');
delete_site_option('pelecard_pay_Buttons_Background');
delete_option('pelecard_pay_Buttons_backgroundImage');
delete_site_option('pelecard_pay_Buttons_backgroundImage');
delete_option('pelecard_pay_Buttons_topMargin');
delete_site_option('pelecard_pay_Buttons_topMargin');

