<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xmas_media');
delete_site_option('xmas_media');
delete_option('santas');
delete_site_option('santas');
delete_option('xmas_url');
delete_site_option('xmas_url');
delete_option('xmas_mp3');
delete_site_option('xmas_mp3');
delete_option('xmas_ogg');
delete_site_option('xmas_ogg');

