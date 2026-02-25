<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sb_pub_id');
delete_site_option('sb_pub_id');
delete_option('sb_api_key');
delete_site_option('sb_api_key');
delete_option('sb_player');
delete_site_option('sb_player');

