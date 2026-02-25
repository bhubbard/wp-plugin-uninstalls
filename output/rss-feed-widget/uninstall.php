<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfw_style');
delete_site_option('rfw_style');
delete_option('rfw_mutes');
delete_site_option('rfw_mutes');
delete_option('rfw_rss_image_size');
delete_site_option('rfw_rss_image_size');
delete_option('rfw_sc_ids');
delete_site_option('rfw_sc_ids');
delete_option('rfw_sc_google_api_key');
delete_site_option('rfw_sc_google_api_key');
delete_option('rfw_custom_tag_patterns');
delete_site_option('rfw_custom_tag_patterns');
delete_option('rsfw_options');
delete_site_option('rsfw_options');
delete_option('rfw_short_code_list');
delete_site_option('rfw_short_code_list');
delete_option('rfw_short_code_settings');
delete_site_option('rfw_short_code_settings');
delete_option('widget_rfw_dock');
delete_site_option('widget_rfw_dock');

