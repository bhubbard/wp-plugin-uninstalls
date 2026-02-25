<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WP-Project Options');
delete_site_option('WP-Project Options');
delete_option('WP-Project Version');
delete_site_option('WP-Project Version');

