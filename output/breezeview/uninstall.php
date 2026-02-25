<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('bv_gr_api_key');
delete_site_option('bv_gr_api_key');
delete_option('bv_gr_place_id');
delete_site_option('bv_gr_place_id');

