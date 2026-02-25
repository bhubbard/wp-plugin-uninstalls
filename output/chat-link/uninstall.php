<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chat_link_enabled');
delete_site_option('chat_link_enabled');
delete_option('chat_link_number');
delete_site_option('chat_link_number');
delete_option('chat_link_side');
delete_site_option('chat_link_side');
delete_option('chat_link_size');
delete_site_option('chat_link_size');
delete_option('chat_link_margin_side');
delete_site_option('chat_link_margin_side');
delete_option('chat_link_margin_bottom');
delete_site_option('chat_link_margin_bottom');
delete_option('chat_link_custom_message');
delete_site_option('chat_link_custom_message');
delete_option('chat_link_custom_image');
delete_site_option('chat_link_custom_image');

