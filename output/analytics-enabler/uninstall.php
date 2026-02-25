<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ao_fields');
delete_site_option('ao_fields');
delete_option('analytics_uaid');
delete_site_option('analytics_uaid');

