<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brid_options');
delete_site_option('brid_options');
delete_option('widget_brid_playlist_widget');
delete_site_option('widget_brid_playlist_widget');
delete_option('embed_size_w');
delete_site_option('embed_size_w');

