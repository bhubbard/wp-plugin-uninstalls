<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcsomm_sommelier_theme');
delete_site_option('wcsomm_sommelier_theme');
delete_option('wcsomm_chat_enabled');
delete_site_option('wcsomm_chat_enabled');

