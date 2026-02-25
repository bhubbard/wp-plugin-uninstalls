<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rkm_post_slug');
delete_site_option('rkm_post_slug');
delete_option('my_option');
delete_site_option('my_option');

