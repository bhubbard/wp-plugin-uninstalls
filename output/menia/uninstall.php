<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('menia_token');
delete_site_option('menia_token');
delete_option('menia_web_chat_enabled');
delete_site_option('menia_web_chat_enabled');
delete_option('menia_web_chat_embed_code');
delete_site_option('menia_web_chat_embed_code');
delete_option('menia_settings');
delete_site_option('menia_settings');
delete_option('menia_widget');
delete_site_option('menia_widget');
delete_option('menia_web_chat');
delete_site_option('menia_web_chat');

