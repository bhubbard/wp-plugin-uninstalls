<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptolike_options');
delete_site_option('uptolike_options');
delete_option('my_option_name');
delete_site_option('my_option_name');
delete_option('regme');
delete_site_option('regme');

