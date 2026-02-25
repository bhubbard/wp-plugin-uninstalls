<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecpangenic_apikey');
delete_site_option('ecpangenic_apikey');
delete_option('ecpangenic_title');
delete_site_option('ecpangenic_title');
delete_option('ecpangenic_color_background_title');
delete_site_option('ecpangenic_color_background_title');
delete_option('ecpangenic_roboticon');
delete_site_option('ecpangenic_roboticon');
delete_option('ecpangenic_initmessage');
delete_site_option('ecpangenic_initmessage');
delete_option('ecpangenic_buttoncolor');
delete_site_option('ecpangenic_buttoncolor');
delete_option('ecpangenic_client_name');
delete_site_option('ecpangenic_client_name');
delete_option('ecpangenic_client_lang');
delete_site_option('ecpangenic_client_lang');
delete_option('ecpangenic_margin_bottom');
delete_site_option('ecpangenic_margin_bottom');
delete_option('ecpangenic_margin_right');
delete_site_option('ecpangenic_margin_right');
delete_option('ecpangenic_bottom_size');
delete_site_option('ecpangenic_bottom_size');
delete_option('ecpangenic_color_background_chat');
delete_site_option('ecpangenic_color_background_chat');
delete_option('ecpangenic_color_outgoing_chat');
delete_site_option('ecpangenic_color_outgoing_chat');
delete_option('ecpangenic_color_incoming_chat');
delete_site_option('ecpangenic_color_incoming_chat');
delete_option('ecpangenic_color_text_chat');
delete_site_option('ecpangenic_color_text_chat');
delete_option('ecpangenic_color_text_title');
delete_site_option('ecpangenic_color_text_title');
delete_option('ecpangenic_color_links_chat');
delete_site_option('ecpangenic_color_links_chat');
delete_option('ecpangenic_color_input_background');
delete_site_option('ecpangenic_color_input_background');
delete_option('ecpangenic_color_input_text');
delete_site_option('ecpangenic_color_input_text');
delete_option('ecpangenic_instance_id');
delete_site_option('ecpangenic_instance_id');
delete_option('ecpangenic_assistant_id');
delete_site_option('ecpangenic_assistant_id');
delete_option('ecpangenic_session_id');
delete_site_option('ecpangenic_session_id');
delete_option('ecpangenic_email');
delete_site_option('ecpangenic_email');
delete_option('ecpangenic_password');
delete_site_option('ecpangenic_password');
delete_option('ecpangenic_assistants');
delete_site_option('ecpangenic_assistants');

