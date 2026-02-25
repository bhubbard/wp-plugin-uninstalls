<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_post_term');
delete_site_option('new_post_term');
delete_option('new_page_term');
delete_site_option('new_page_term');

