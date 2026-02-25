<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usz_db_configured');
delete_site_option('usz_db_configured');
delete_option('usz_integration_cf7');
delete_site_option('usz_integration_cf7');
delete_option('usz_integration_ninja');
delete_site_option('usz_integration_ninja');
delete_option('usz_integration_gravity');
delete_site_option('usz_integration_gravity');
delete_option('usz_integration_formidable');
delete_site_option('usz_integration_formidable');

