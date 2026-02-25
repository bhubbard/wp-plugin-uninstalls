<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_splittest_tab_credits');
delete_site_option('easy_splittest_tab_credits');
delete_option('easy_splittest_tab_noindex');
delete_site_option('easy_splittest_tab_noindex');

