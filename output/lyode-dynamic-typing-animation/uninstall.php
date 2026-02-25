<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lyode_typing_default_loop');
delete_site_option('lyode_typing_default_loop');
delete_option('lyode_typing_default_style');
delete_site_option('lyode_typing_default_style');
delete_option('lyode_typing_default_cursor');
delete_site_option('lyode_typing_default_cursor');
delete_option('lyode_typing_enable_statistics');
delete_site_option('lyode_typing_enable_statistics');
delete_option('lyode_typing_statistics');
delete_site_option('lyode_typing_statistics');

