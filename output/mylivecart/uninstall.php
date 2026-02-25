<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ztbcl_consumer_key');
delete_site_option('ztbcl_consumer_key');
delete_option('ztbcl_consumer_secret_key');
delete_site_option('ztbcl_consumer_secret_key');

