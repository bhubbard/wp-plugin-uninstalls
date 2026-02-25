<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nubisoft_remove_data_on_uninstall');
delete_site_option('nubisoft_remove_data_on_uninstall');

