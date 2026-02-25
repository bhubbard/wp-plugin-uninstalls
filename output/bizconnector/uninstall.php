<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bizconnector_base');
delete_site_option('bizconnector_base');
delete_option('bizconnector_controllers');
delete_site_option('bizconnector_controllers');

