<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_readmore_link_pages');
delete_site_option('hide_readmore_link_pages');
delete_option('hide_all_readmore_links');
delete_site_option('hide_all_readmore_links');
delete_option('use_single_images_folder');
delete_site_option('use_single_images_folder');
delete_option('use_compressed_images');
delete_site_option('use_compressed_images');
delete_option('load_plugin_styles');
delete_site_option('load_plugin_styles');

