<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gg_af_app_id');
delete_site_option('gg_af_app_id');
delete_option('gg_af_tracking_id');
delete_site_option('gg_af_tracking_id');
delete_option('gg_custom_fields_cell');
delete_site_option('gg_custom_fields_cell');

