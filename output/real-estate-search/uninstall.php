<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('res_locationss');
delete_site_option('res_locationss');
delete_option('res_propertiess');
delete_site_option('res_propertiess');
delete_option('res_pricess');
delete_site_option('res_pricess');

