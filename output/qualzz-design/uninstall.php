<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webid');
delete_site_option('webid');
delete_option('map_name');
delete_site_option('map_name');

