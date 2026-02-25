<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jft_layout');
delete_site_option('jft_layout');
delete_option('jft_language');
delete_site_option('jft_language');
delete_option('jft_timezone');
delete_site_option('jft_timezone');

