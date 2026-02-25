<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kiamo_license_key');
delete_site_option('kiamo_license_key');
delete_option('kiamo_options');
delete_site_option('kiamo_options');

