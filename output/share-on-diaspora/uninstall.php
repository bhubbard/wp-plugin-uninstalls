<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('share-on-diaspora-settings');
delete_site_option('share-on-diaspora-settings');
delete_option('share-on-diaspora-settings2');
delete_site_option('share-on-diaspora-settings2');
delete_option('dpu-podlist');
delete_site_option('dpu-podlist');

