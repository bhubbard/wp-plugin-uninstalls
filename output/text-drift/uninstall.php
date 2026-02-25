<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('textdrift_appkey');
delete_site_option('textdrift_appkey');
delete_option('textdrift_active');
delete_site_option('textdrift_active');
delete_option('textdrift_photo');
delete_site_option('textdrift_photo');

