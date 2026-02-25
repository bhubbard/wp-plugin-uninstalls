<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tave-ignore-fields');
delete_site_option('tave-ignore-fields');
delete_option('tave-api-key');
delete_site_option('tave-api-key');
delete_option('tave-studio-id');
delete_site_option('tave-studio-id');
delete_option('send-CF7');
delete_site_option('send-CF7');
delete_option('send-Tave');
delete_site_option('send-Tave');
delete_option('taveErrorLog');
delete_site_option('taveErrorLog');

