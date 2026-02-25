<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_search_bar_db_version');
delete_site_option('ai_search_bar_db_version');
delete_option('OASB_flash_notices');
delete_site_option('OASB_flash_notices');
delete_option('chatgpt-key');
delete_site_option('chatgpt-key');

