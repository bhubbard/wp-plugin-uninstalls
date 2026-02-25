<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jquery');
delete_site_option('jquery');
delete_option('postsContainer');
delete_site_option('postsContainer');

