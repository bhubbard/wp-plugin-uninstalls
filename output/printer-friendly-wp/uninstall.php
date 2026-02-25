<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('print_button_posts');
delete_site_option('print_button_posts');
delete_option('print_button_pages');
delete_site_option('print_button_pages');

