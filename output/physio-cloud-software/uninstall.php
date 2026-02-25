<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('physiocloudsoftware_username');
delete_site_option('physiocloudsoftware_username');
delete_option('physiocloudsoftware_apikey');
delete_site_option('physiocloudsoftware_apikey');

