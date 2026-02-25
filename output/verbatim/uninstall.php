<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vrbtm_search_container');
delete_site_option('vrbtm_search_container');
delete_option('vrbtm_highlight_parent');
delete_site_option('vrbtm_highlight_parent');
delete_option('vrbtm_allow_images');
delete_site_option('vrbtm_allow_images');
delete_option('vrbtm_animated');
delete_site_option('vrbtm_animated');
delete_option('vrbtm_animation_speed');
delete_site_option('vrbtm_animation_speed');
delete_option('vrbtm_scrolling_offset');
delete_site_option('vrbtm_scrolling_offset');
delete_option('vrbtm_added_class');
delete_site_option('vrbtm_added_class');
delete_option('vrbtm_highlighted_class');
delete_site_option('vrbtm_highlighted_class');
delete_option('vrbtm_highlighted_color');
delete_site_option('vrbtm_highlighted_color');
delete_option('vrbtm_selected_class');
delete_site_option('vrbtm_selected_class');
delete_option('vrbtm_button_class');
delete_site_option('vrbtm_button_class');
delete_option('vrbtm_bitly_token');
delete_site_option('vrbtm_bitly_token');

