<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parksystem_page_template');
delete_site_option('parksystem_page_template');
delete_option('parksystem_parking_token');
delete_site_option('parksystem_parking_token');
delete_option('parksystem_body_bg_color');
delete_site_option('parksystem_body_bg_color');
delete_option('parksystem_text_color');
delete_site_option('parksystem_text_color');
delete_option('parksystem_input_bg_color');
delete_site_option('parksystem_input_bg_color');
delete_option('parksystem_label_text_color');
delete_site_option('parksystem_label_text_color');
delete_option('parksystem_card_bg_color');
delete_site_option('parksystem_card_bg_color');
delete_option('parksystem_input_hover_bg_color');
delete_site_option('parksystem_input_hover_bg_color');

// Delete Transients
delete_transient('parksystem_block_template_content');
delete_site_transient('parksystem_block_template_content');
delete_transient('parksystem_block_template_path');
delete_site_transient('parksystem_block_template_path');
delete_transient('parksystem_iframe_content');
delete_site_transient('parksystem_iframe_content');

