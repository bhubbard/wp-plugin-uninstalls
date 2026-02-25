<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtwbmal_front_display_option');
delete_site_option('rtwbmal_front_display_option');
delete_option('rtwbma_general_settings');
delete_site_option('rtwbma_general_settings');
delete_option('rtwbmal_holidays_option');
delete_site_option('rtwbmal_holidays_option');
delete_option('rtwbmal_frntend_brdr_radi');
delete_site_option('rtwbmal_frntend_brdr_radi');
delete_option('rtwbmal_general_settings');
delete_site_option('rtwbmal_general_settings');
delete_option('rtwbmal_company_option');
delete_site_option('rtwbmal_company_option');
delete_option('rtwbmal_payment_option');
delete_site_option('rtwbmal_payment_option');
delete_option('rtwbmal_business_hour');
delete_site_option('rtwbmal_business_hour');
delete_option('rtwbmal_lite_installed');
delete_site_option('rtwbmal_lite_installed');
delete_option('rtwwdpd_verification_done');
delete_site_option('rtwwdpd_verification_done');
delete_option('rtwbmal_frontend_option');
delete_site_option('rtwbmal_frontend_option');
delete_option('rtwbmal_reg_temp_opt');
delete_site_option('rtwbmal_reg_temp_opt');
delete_option('rtwbmal_return_url');
delete_site_option('rtwbmal_return_url');

