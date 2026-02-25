<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hqfam_ica_enable_cf7');
delete_site_option('hqfam_ica_enable_cf7');
delete_option('hqfam_ica_enable_custom');
delete_site_option('hqfam_ica_enable_custom');

