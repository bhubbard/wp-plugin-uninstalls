<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('molsc_wp_presiandate');
delete_site_option('molsc_wp_presiandate');
delete_option('molsc_wc_datepicker');
delete_site_option('molsc_wc_datepicker');
delete_option('molsc_persian');
delete_site_option('molsc_persian');
delete_option('molsc_install_time');
delete_site_option('molsc_install_time');
delete_option('molsc_gave_feedback');
delete_site_option('molsc_gave_feedback');

