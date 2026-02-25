<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcsoptions');
delete_site_option('wpcsoptions');
delete_option('wpcsoptionssaved');
delete_site_option('wpcsoptionssaved');

