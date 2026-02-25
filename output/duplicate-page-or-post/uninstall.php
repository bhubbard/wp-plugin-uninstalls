<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdevart_duplicate_post_admin_parametrs');
delete_site_option('wpdevart_duplicate_post_admin_parametrs');

