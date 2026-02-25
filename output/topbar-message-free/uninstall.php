<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tbm_free_check');
delete_site_option('tbm_free_check');
delete_option('tbm_free_message');
delete_site_option('tbm_free_message');
delete_option('tbm_free_bg_color');
delete_site_option('tbm_free_bg_color');
delete_option('tbm_free_message_text_color');
delete_site_option('tbm_free_message_text_color');
delete_option('tbm_free_message_text_size');
delete_site_option('tbm_free_message_text_size');
delete_option('tbm_free_message_text_link');
delete_site_option('tbm_free_message_text_link');
delete_option('tbm_free_height');
delete_site_option('tbm_free_height');
delete_option('tbm_free_button_check');
delete_site_option('tbm_free_button_check');
delete_option('tbm_free_button_text');
delete_site_option('tbm_free_button_text');
delete_option('tbm_free_button_color');
delete_site_option('tbm_free_button_color');
delete_option('tbm_free_button_text_color');
delete_site_option('tbm_free_button_text_color');
delete_option('tbm_free_topbar_statement');
delete_site_option('tbm_free_topbar_statement');
delete_option('tbm_free_button_link');
delete_site_option('tbm_free_button_link');
delete_option('tbm_free_button_text_size');
delete_site_option('tbm_free_button_text_size');
delete_option('tbm_free_button_border');
delete_site_option('tbm_free_button_border');
delete_option('tbm_free_removible_check');
delete_site_option('tbm_free_removible_check');
delete_option('tbm_free_remove_button_color');
delete_site_option('tbm_free_remove_button_color');

