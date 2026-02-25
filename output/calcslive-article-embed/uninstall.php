<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calcslive_api_key');
delete_site_option('calcslive_api_key');
delete_option('calcslive_default_width');
delete_site_option('calcslive_default_width');
delete_option('calcslive_default_height');
delete_site_option('calcslive_default_height');
delete_option('calcslive_domain');
delete_site_option('calcslive_domain');

