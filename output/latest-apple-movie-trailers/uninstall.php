<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lamt_display_many');
delete_site_option('lamt_display_many');
delete_option('lamt_poster_size');
delete_site_option('lamt_poster_size');
delete_option('lamt_caption_position');
delete_site_option('lamt_caption_position');

