<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp3quran_form');
delete_site_option('mp3quran_form');
delete_option('mp3quran_title');
delete_site_option('mp3quran_title');
delete_option('mp3quran_height');
delete_site_option('mp3quran_height');
delete_option('mp3quran_autostart');
delete_site_option('mp3quran_autostart');
delete_option('mp3quran_viewtitle');
delete_site_option('mp3quran_viewtitle');

