<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qcld_wb_chatbot_theme');
delete_site_option('qcld_wb_chatbot_theme');
delete_option('qcld_woo_chatbot_theme');
delete_site_option('qcld_woo_chatbot_theme');
delete_option('enable_chat_session');
delete_site_option('enable_chat_session');

