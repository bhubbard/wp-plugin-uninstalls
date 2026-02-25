<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintainchoicePluginMood');
delete_site_option('maintainchoicePluginMood');
delete_option('maintainchoicePlugin_messageType');
delete_site_option('maintainchoicePlugin_messageType');
delete_option('maintainchoicePlugin_message_page');
delete_site_option('maintainchoicePlugin_message_page');
delete_option('maintainchoicePlugin_TextToDisplay');
delete_site_option('maintainchoicePlugin_TextToDisplay');

