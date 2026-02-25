<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inperium_api_key');
delete_site_option('inperium_api_key');
delete_option('inperium_db_version');
delete_site_option('inperium_db_version');

