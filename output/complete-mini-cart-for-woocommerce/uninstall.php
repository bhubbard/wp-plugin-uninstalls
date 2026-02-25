<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('cmcw_box_margin');
delete_site_option('cmcw_box_margin');
delete_option('cmcw_count_size');
delete_site_option('cmcw_count_size');
delete_option('cmcw_count_position');
delete_site_option('cmcw_count_position');
delete_option('cmcw_icon_size');
delete_site_option('cmcw_icon_size');
delete_option('cmcw_count_bg_color');
delete_site_option('cmcw_count_bg_color');
delete_option('cmcw_text_color');
delete_site_option('cmcw_text_color');
delete_option('cmcw_icon_color');
delete_site_option('cmcw_icon_color');
delete_option('cmcw_icon_name');
delete_site_option('cmcw_icon_name');

