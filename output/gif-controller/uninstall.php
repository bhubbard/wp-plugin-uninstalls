<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gif_hover');
delete_site_option('gif_hover');
delete_option('gif_wait');
delete_site_option('gif_wait');
delete_option('gif_labelimg');
delete_site_option('gif_labelimg');

