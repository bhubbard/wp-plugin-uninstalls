<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zbbs_block_stats');
delete_site_option('zbbs_block_stats');
delete_option('zbbs_404_limit');
delete_site_option('zbbs_404_limit');
delete_option('zbbs_404_window');
delete_site_option('zbbs_404_window');
delete_option('zbbs_blocked_countries');
delete_site_option('zbbs_blocked_countries');

