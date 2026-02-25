<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fb3fw');
delete_site_option('fb3fw');
delete_option('fb3fw_active_version');
delete_site_option('fb3fw_active_version');

