<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swarmify_status');
delete_site_option('swarmify_status');
delete_option('swarmify_cdn_key');
delete_site_option('swarmify_cdn_key');
delete_option('swarmify_toggle_youtube');
delete_site_option('swarmify_toggle_youtube');
delete_option('swarmify_toggle_youtube_cc');
delete_site_option('swarmify_toggle_youtube_cc');
delete_option('swarmify_toggle_layout');
delete_site_option('swarmify_toggle_layout');
delete_option('swarmify_toggle_bgvideo');
delete_site_option('swarmify_toggle_bgvideo');
delete_option('swarmify_theme_button');
delete_site_option('swarmify_theme_button');
delete_option('swarmify_toggle_uploadacceleration');
delete_site_option('swarmify_toggle_uploadacceleration');
delete_option('swarmify_theme_primarycolor');
delete_site_option('swarmify_theme_primarycolor');
delete_option('swarmify_watermark');
delete_site_option('swarmify_watermark');
delete_option('swarmify_ads_vasturl');
delete_site_option('swarmify_ads_vasturl');

