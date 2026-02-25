<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HeivGallery3PP');
delete_site_option('HeivGallery3PP');
delete_option('HeiVGallery3PP');
delete_site_option('HeiVGallery3PP');

