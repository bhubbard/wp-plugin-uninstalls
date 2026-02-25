<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('synfield_app_key');
delete_site_option('synfield_app_key');
delete_option('synfield_app_key_error');
delete_site_option('synfield_app_key_error');

