<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post-miner_recommendations_header');
delete_site_option('post-miner_recommendations_header');
delete_option('post-miner_recommendations_limit');
delete_site_option('post-miner_recommendations_limit');
delete_option('post-miner_db_version');
delete_site_option('post-miner_db_version');

