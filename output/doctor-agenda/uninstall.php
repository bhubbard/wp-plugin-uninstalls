<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdoctorAgenda-email');
delete_site_option('wpdoctorAgenda-email');
delete_option('wpdoctorAgenda-password');
delete_site_option('wpdoctorAgenda-password');
delete_option('wpdoctorAgenda-installed');
delete_site_option('wpdoctorAgenda-installed');
delete_option('wp-doctorAgenda');
delete_site_option('wp-doctorAgenda');

