<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email-log-core');
delete_site_option('email-log-core');
delete_option('email-log-db');
delete_site_option('email-log-db');
delete_option('el_mask_fields');
delete_site_option('el_mask_fields');
delete_option('el_bundle_license');
delete_site_option('el_bundle_license');

