<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CWCB_settings');
delete_site_option('CWCB_settings');
delete_option('CWCB_chatbot_content');
delete_site_option('CWCB_chatbot_content');
delete_option('cw_chatbot_block_content');
delete_site_option('cw_chatbot_block_content');

