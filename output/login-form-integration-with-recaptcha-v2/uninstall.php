<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secret_key');
delete_site_option('secret_key');
delete_option('site_key');
delete_site_option('site_key');

