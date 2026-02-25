<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('redistats_property_id');
delete_site_option('redistats_property_id');
delete_option('redistats_global_id');
delete_site_option('redistats_global_id');
delete_option('redistats_verification');
delete_site_option('redistats_verification');
delete_option('redistats_status');
delete_site_option('redistats_status');
delete_option('redistats_api_key');
delete_site_option('redistats_api_key');
delete_option('redistats_email');
delete_site_option('redistats_email');

