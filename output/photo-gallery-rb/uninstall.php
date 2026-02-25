<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('photo_gallery_rb_install');
delete_site_option('photo_gallery_rb_install');

