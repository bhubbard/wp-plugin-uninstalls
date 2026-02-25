<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('insert_postcode');
delete_site_transient('insert_postcode');
delete_transient('update_postcode');
delete_site_transient('update_postcode');
delete_transient('delete_postcode');
delete_site_transient('delete_postcode');

