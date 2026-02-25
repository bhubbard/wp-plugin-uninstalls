<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duplicator_post_page_installed');
delete_site_option('duplicator_post_page_installed');
delete_option('duplicator_post_page_version');
delete_site_option('duplicator_post_page_version');

