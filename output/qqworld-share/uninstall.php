<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qqworld-share-mode');
delete_site_option('qqworld-share-mode');
delete_option('qqworld-share-settings');
delete_site_option('qqworld-share-settings');
delete_option('qqworld-share-theme');
delete_site_option('qqworld-share-theme');
delete_option('qqworld-share-posttypes');
delete_site_option('qqworld-share-posttypes');

