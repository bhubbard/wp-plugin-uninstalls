<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('missive_chat');
delete_site_option('missive_chat');
delete_option('missive_chat_account_id');
delete_site_option('missive_chat_account_id');
delete_option('missive_chat_main_color');
delete_site_option('missive_chat_main_color');
delete_option('message_welcome');
delete_site_option('message_welcome');
delete_option('message_help');
delete_site_option('message_help');
delete_option('message_identify');
delete_site_option('message_identify');
delete_option('message_error');
delete_site_option('message_error');
delete_option('message_title');
delete_site_option('message_title');
delete_option('message_online');
delete_site_option('message_online');
delete_option('message_offline');
delete_site_option('message_offline');
delete_option('message_connecting');
delete_site_option('message_connecting');
delete_option('message_chat');
delete_site_option('message_chat');
delete_option('message_internet');
delete_site_option('message_internet');
delete_option('message_identifyName');
delete_site_option('message_identifyName');
delete_option('message_identifyEmail');
delete_site_option('message_identifyEmail');
delete_option('message_identifySubmit');
delete_site_option('message_identifySubmit');
delete_option('message_identifyRequired');
delete_site_option('message_identifyRequired');
delete_option('message_identifyThanks');
delete_site_option('message_identifyThanks');

