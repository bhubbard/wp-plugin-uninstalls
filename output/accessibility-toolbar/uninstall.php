<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ll_at_license');
delete_site_option('ll_at_license');
delete_option('toolbar_license_key');
delete_site_option('toolbar_license_key');

