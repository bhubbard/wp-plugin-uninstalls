<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lmh_use_post_creation_time');
delete_site_option('lmh_use_post_creation_time');

