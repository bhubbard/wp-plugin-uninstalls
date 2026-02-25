<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('facebook_album_fb_app_token');
delete_site_option('facebook_album_fb_app_token');

