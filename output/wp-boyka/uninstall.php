<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boyka_compression_level');
delete_site_option('boyka_compression_level');
delete_option('boyka_compress_thumbnails');
delete_site_option('boyka_compress_thumbnails');
delete_option('boyka_compress_on_upload');
delete_site_option('boyka_compress_on_upload');
delete_option('boyka_disable_preview');
delete_site_option('boyka_disable_preview');
delete_option('boyka_verbose_mode');
delete_site_option('boyka_verbose_mode');

