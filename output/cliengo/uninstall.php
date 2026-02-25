<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cliengo_session');
delete_site_option('cliengo_session');
delete_option('cliengo_chatbot_token');
delete_site_option('cliengo_chatbot_token');
delete_option('cliengo_chatbot_position');
delete_site_option('cliengo_chatbot_position');
delete_option('position_chatbot');
delete_site_option('position_chatbot');

