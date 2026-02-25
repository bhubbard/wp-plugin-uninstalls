<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('public_post_preview_expiration_time');
delete_site_option('public_post_preview_expiration_time');
delete_option('public_post_preview');
delete_site_option('public_post_preview');

