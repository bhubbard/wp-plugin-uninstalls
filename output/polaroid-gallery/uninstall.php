<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_size');
delete_site_option('image_size');
delete_option('ignore_columns');
delete_site_option('ignore_columns');
delete_option('custom_text');
delete_site_option('custom_text');
delete_option('custom_text_value');
delete_site_option('custom_text_value');
delete_option('thumbnail_caption');
delete_site_option('thumbnail_caption');
delete_option('thumbnail_option');
delete_site_option('thumbnail_option');
delete_option('image_option');
delete_site_option('image_option');
delete_option('scratches');
delete_site_option('scratches');
delete_option('show_in_pages');
delete_site_option('show_in_pages');

