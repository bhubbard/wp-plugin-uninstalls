<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('masoffer_dl_data');
delete_site_option('masoffer_dl_data');
delete_option('masoffer_dl_publisher_id');
delete_site_option('masoffer_dl_publisher_id');

