<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('akia_chat_website_token');
delete_site_option('akia_chat_website_token');
delete_option('akia_chat_office_name');
delete_site_option('akia_chat_office_name');
delete_option('akia_chat_powered_by_acknowledged');
delete_site_option('akia_chat_powered_by_acknowledged');

