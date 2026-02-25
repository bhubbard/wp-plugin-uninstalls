<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getsale_option_name');
delete_site_option('getsale_option_name');
delete_option('uptolike_options');
delete_site_option('uptolike_options');

