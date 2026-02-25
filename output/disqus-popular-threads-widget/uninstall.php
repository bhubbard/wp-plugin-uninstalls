<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_diqus_api_key');
delete_site_option('_diqus_api_key');
delete_option('_diqus_forum_ID');
delete_site_option('_diqus_forum_ID');
delete_option('_diqus_forum_domain');
delete_site_option('_diqus_forum_domain');

