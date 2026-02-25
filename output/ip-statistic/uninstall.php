<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip_statistic_ver');
delete_site_option('ip_statistic_ver');
delete_option('ip_statistic_showcounts');
delete_site_option('ip_statistic_showcounts');
delete_option('ip_statistic_savedays');
delete_site_option('ip_statistic_savedays');
delete_option('ip_statistic_saverows');
delete_site_option('ip_statistic_saverows');
delete_option('ip_statistic_onlogin');
delete_site_option('ip_statistic_onlogin');
delete_option('ip_statistic_errlogin');
delete_site_option('ip_statistic_errlogin');
delete_option('ip_statistic_showlogin');
delete_site_option('ip_statistic_showlogin');
delete_option('ip_statistic_sav_pas_errlogin');
delete_site_option('ip_statistic_sav_pas_errlogin');
delete_option('ip_statistic_save_pass_ex');
delete_site_option('ip_statistic_save_pass_ex');

