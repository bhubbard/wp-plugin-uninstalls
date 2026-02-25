<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hjyl_appkey');
delete_site_option('hjyl_appkey');
delete_option('hjyl_name');
delete_site_option('hjyl_name');
delete_option('hjyl_password');
delete_site_option('hjyl_password');
delete_option('hjyl_share_toutiao');
delete_site_option('hjyl_share_toutiao');

