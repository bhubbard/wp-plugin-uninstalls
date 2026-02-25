<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoshare_migrate_to_v2_api_notice_dismissed');
delete_site_option('autoshare_migrate_to_v2_api_notice_dismissed');
delete_option('autoshare_ignore_duplicate_site_notice');
delete_site_option('autoshare_ignore_duplicate_site_notice');
delete_option('autoshare_liveurl');
delete_site_option('autoshare_liveurl');
delete_option('autoshare_for_twitter_accounts');
delete_site_option('autoshare_for_twitter_accounts');

// Delete Transients
delete_transient('autoshare_for_twitter_connection_notice');
delete_site_transient('autoshare_for_twitter_connection_notice');

