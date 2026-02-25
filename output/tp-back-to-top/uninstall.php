<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tp_scroll_top_option_enable');
delete_site_option('tp_scroll_top_option_enable');
delete_option('tp_scroll_top_visibility_fade_speed');
delete_site_option('tp_scroll_top_visibility_fade_speed');
delete_option('tp_scroll_top_scroll_fade_speed');
delete_site_option('tp_scroll_top_scroll_fade_speed');
delete_option('tp_scroll_top_scroll_position');
delete_site_option('tp_scroll_top_scroll_position');
delete_option('tp_scroll_top_scrollbg');
delete_site_option('tp_scroll_top_scrollbg');
delete_option('tp_scroll_top_scrollbg_hover');
delete_site_option('tp_scroll_top_scrollbg_hover');
delete_option('tp_scroll_top_scrollradious');
delete_site_option('tp_scroll_top_scrollradious');
delete_option('tp_scroll_top_visibility_trigger');
delete_site_option('tp_scroll_top_visibility_trigger');

