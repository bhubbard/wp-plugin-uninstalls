<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('torrent_link_enabled');
delete_site_option('torrent_link_enabled');
delete_option('show_seed_leech_info');
delete_site_option('show_seed_leech_info');
delete_option('show_download_info');
delete_site_option('show_download_info');
delete_option('torrents_directory');
delete_site_option('torrents_directory');

