<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brewerydb_apikey');
delete_site_option('brewerydb_apikey');
delete_option('brewerydb_cachetime');
delete_site_option('brewerydb_cachetime');

