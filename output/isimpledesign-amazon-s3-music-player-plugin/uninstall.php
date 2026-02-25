<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isd-amazon_key');
delete_site_option('isd-amazon_key');
delete_option('isd-amazon_secret_key');
delete_site_option('isd-amazon_secret_key');
delete_option('isd-bucket');
delete_site_option('isd-bucket');
delete_option('isd-folder');
delete_site_option('isd-folder');

