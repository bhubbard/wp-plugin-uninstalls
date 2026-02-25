<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xapp_chat_widget_key');
delete_site_option('xapp_chat_widget_key');
delete_option('xapp_form_widget_key');
delete_site_option('xapp_form_widget_key');
delete_option('xapp_search_widget_key');
delete_site_option('xapp_search_widget_key');

