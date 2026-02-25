<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('header_code');
delete_site_option('header_code');
delete_option('quickchat');
delete_site_option('quickchat');

