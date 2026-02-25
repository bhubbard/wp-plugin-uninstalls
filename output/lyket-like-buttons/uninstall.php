<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lyket_api_key');
delete_site_option('lyket_api_key');
delete_option('lyket_disable_session_id');
delete_site_option('lyket_disable_session_id');
delete_option('lyket_page_button_type');
delete_site_option('lyket_page_button_type');
delete_option('lyket_page_template');
delete_site_option('lyket_page_template');
delete_option('lyket_page_text_color');
delete_site_option('lyket_page_text_color');
delete_option('lyket_page_primary_color');
delete_site_option('lyket_page_primary_color');
delete_option('lyket_page_secondary_color');
delete_site_option('lyket_page_secondary_color');
delete_option('lyket_page_background_color');
delete_site_option('lyket_page_background_color');
delete_option('lyket_page_highlight_color');
delete_site_option('lyket_page_highlight_color');
delete_option('lyket_page_icon_color');
delete_site_option('lyket_page_icon_color');
delete_option('lyket_page_h_align');
delete_site_option('lyket_page_h_align');
delete_option('lyket_page_v_align');
delete_site_option('lyket_page_v_align');
delete_option('lyket_page_enable');
delete_site_option('lyket_page_enable');
delete_option('lyket_post_button_type');
delete_site_option('lyket_post_button_type');
delete_option('lyket_post_template');
delete_site_option('lyket_post_template');
delete_option('lyket_post_text_color');
delete_site_option('lyket_post_text_color');
delete_option('lyket_post_primary_color');
delete_site_option('lyket_post_primary_color');
delete_option('lyket_post_secondary_color');
delete_site_option('lyket_post_secondary_color');
delete_option('lyket_post_background_color');
delete_site_option('lyket_post_background_color');
delete_option('lyket_post_highlight_color');
delete_site_option('lyket_post_highlight_color');
delete_option('lyket_post_icon_color');
delete_site_option('lyket_post_icon_color');
delete_option('lyket_post_h_align');
delete_site_option('lyket_post_h_align');
delete_option('lyket_post_v_align');
delete_site_option('lyket_post_v_align');
delete_option('lyket_post_enable');
delete_site_option('lyket_post_enable');
delete_option('lyket_post_excerpt_enable');
delete_site_option('lyket_post_excerpt_enable');

