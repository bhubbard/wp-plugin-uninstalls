<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whello_sticky_chat_button_settings');
delete_site_option('whello_sticky_chat_button_settings');

