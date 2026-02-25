<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hearthis_width');
delete_site_option('hearthis_width');
delete_option('hearthis_height');
delete_site_option('hearthis_height');
delete_option('hearthis_theme');
delete_site_option('hearthis_theme');
delete_option('hearthis_hcolor');
delete_site_option('hearthis_hcolor');
delete_option('hearthis_color');
delete_site_option('hearthis_color');
delete_option('hearthis_style');
delete_site_option('hearthis_style');
delete_option('hearthis_background');
delete_site_option('hearthis_background');
delete_option('hearthis_waveform');
delete_site_option('hearthis_waveform');
delete_option('hearthis_cover');
delete_site_option('hearthis_cover');
delete_option('hearthis_block_size');
delete_site_option('hearthis_block_size');
delete_option('hearthis_block_space');
delete_site_option('hearthis_block_space');
delete_option('hearthis_css');
delete_site_option('hearthis_css');

