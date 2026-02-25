<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TNDRESL_grs_api_key');
delete_site_option('TNDRESL_grs_api_key');
delete_option('TNDRESL_grs_place_id');
delete_site_option('TNDRESL_grs_place_id');
delete_option('TRONRESL_grs_api_key');
delete_site_option('TRONRESL_grs_api_key');
delete_option('TRONRESL_grs_place_id');
delete_site_option('TRONRESL_grs_place_id');

