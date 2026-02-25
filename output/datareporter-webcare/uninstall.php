<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('datareporter_webcache_url');
delete_site_option('datareporter_webcache_url');
delete_option('datareporter_client_id');
delete_site_option('datareporter_client_id');
delete_option('datareporter_organisation_id');
delete_site_option('datareporter_organisation_id');
delete_option('datareporter_website_id');
delete_site_option('datareporter_website_id');

