<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woa_apikey');
delete_site_option('woa_apikey');
delete_option('woa_phone');
delete_site_option('woa_phone');

