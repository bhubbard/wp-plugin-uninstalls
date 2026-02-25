<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmapblock_ablocks_install_notice_hidden');
delete_site_option('wpmapblock_ablocks_install_notice_hidden');
delete_option('kodezen_black_friday_notice');
delete_site_option('kodezen_black_friday_notice');
delete_option('wp_map_block_first_install_time');
delete_site_option('wp_map_block_first_install_time');
delete_option('insightsforwp_sent_data');
delete_site_option('insightsforwp_sent_data');
delete_option('wp_map_block_version');
delete_site_option('wp_map_block_version');

