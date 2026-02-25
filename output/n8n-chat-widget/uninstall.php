<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('n8n_chat_widget_url');
delete_site_option('n8n_chat_widget_url');
delete_option('n8n_chat_widget_enabled');
delete_site_option('n8n_chat_widget_enabled');
delete_option('n8n_chat_widget_position');
delete_site_option('n8n_chat_widget_position');
delete_option('n8n_chat_widget_title');
delete_site_option('n8n_chat_widget_title');
delete_option('n8n_chat_widget_color');
delete_site_option('n8n_chat_widget_color');
delete_option('n8n_chat_widget_icon');
delete_site_option('n8n_chat_widget_icon');
delete_option('n8n_chat_widget_icon_type');
delete_site_option('n8n_chat_widget_icon_type');
delete_option('n8n_chat_widget_svg_icon');
delete_site_option('n8n_chat_widget_svg_icon');
delete_option('n8n_chat_widget_zoom');
delete_site_option('n8n_chat_widget_zoom');

