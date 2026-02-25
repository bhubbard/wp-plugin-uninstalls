<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('display-post-reading-time_saved_msg');
delete_site_option('display-post-reading-time_saved_msg');

