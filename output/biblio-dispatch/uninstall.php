<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('biblio_dispatch_license_key_email');
delete_site_option('biblio_dispatch_license_key_email');
delete_option('biblio_dispatch_license_key');
delete_site_option('biblio_dispatch_license_key');
delete_option('biblio_dispatch_license_status');
delete_site_option('biblio_dispatch_license_status');

