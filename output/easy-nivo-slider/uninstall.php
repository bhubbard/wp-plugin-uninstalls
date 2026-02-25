<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_nivo_slider_options');
delete_site_option('easy_nivo_slider_options');
delete_option('widget_nivo_slider_for_current_post');
delete_site_option('widget_nivo_slider_for_current_post');
delete_option('widget_easy_nivo_slider');
delete_site_option('widget_easy_nivo_slider');
delete_option('widget_easy_nivo_slider_nextgen');
delete_site_option('widget_easy_nivo_slider_nextgen');

