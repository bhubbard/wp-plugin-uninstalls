<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('es_c_emailsubscribers');
delete_site_option('es_c_emailsubscribers');

