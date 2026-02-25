<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swal_cf7_title_success');
delete_site_option('swal_cf7_title_success');
delete_option('swal_cf7_duration_success');
delete_site_option('swal_cf7_duration_success');
delete_option('swal_cf7_title_error');
delete_site_option('swal_cf7_title_error');
delete_option('swal_cf7_duration_error');
delete_site_option('swal_cf7_duration_error');

