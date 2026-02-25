<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('app_id');
delete_site_option('app_id');
delete_option('app_secert');
delete_site_option('app_secert');
delete_option('is_ensure_user_id');
delete_site_option('is_ensure_user_id');

