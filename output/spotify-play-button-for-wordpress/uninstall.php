<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spotifyplaybutton_size');
delete_site_option('spotifyplaybutton_size');
delete_option('spotifyplaybutton_sizetype');
delete_site_option('spotifyplaybutton_sizetype');
delete_option('spotifyplaybutton_link');
delete_site_option('spotifyplaybutton_link');

