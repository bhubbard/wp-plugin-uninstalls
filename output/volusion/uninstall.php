<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpvolusion');
delete_site_option('wpvolusion');

// Delete Transients
delete_transient('volusion_select');
delete_site_transient('volusion_select');
delete_transient('volusion_all_p');
delete_site_transient('volusion_all_p');

