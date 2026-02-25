<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reflex_gallery_options');
delete_site_option('reflex_gallery_options');
delete_option('reflex_gallery_db_version');
delete_site_option('reflex_gallery_db_version');

