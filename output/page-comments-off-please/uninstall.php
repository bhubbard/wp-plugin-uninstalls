<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_page_comments');
delete_site_option('disable_page_comments');
delete_option('disable_post_comments');
delete_site_option('disable_post_comments');
delete_option('legacy_mode');
delete_site_option('legacy_mode');

