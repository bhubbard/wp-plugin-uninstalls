<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('media_selector_attachment_id');
delete_site_option('media_selector_attachment_id');
delete_option('select_form');
delete_site_option('select_form');
delete_option('left_textarea');
delete_site_option('left_textarea');
delete_option('form_background');
delete_site_option('form_background');
delete_option('main_background_color');
delete_site_option('main_background_color');
delete_option('leftarea_content_position');
delete_site_option('leftarea_content_position');
delete_option('label_color');
delete_site_option('label_color');
delete_option('leftarea_text_color');
delete_site_option('leftarea_text_color');
delete_option('leftarea_text_align');
delete_site_option('leftarea_text_align');
delete_option('text_background');
delete_site_option('text_background');
delete_option('close_button_color');
delete_site_option('close_button_color');
delete_option('onload_or_click');
delete_site_option('onload_or_click');
delete_option('click_selector');
delete_site_option('click_selector');

