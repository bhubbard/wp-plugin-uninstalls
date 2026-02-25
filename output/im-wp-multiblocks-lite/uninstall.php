<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('im-wp-lite-mb-active');
delete_site_option('im-wp-lite-mb-active');
delete_option('im-wp-lite-mb-settings');
delete_site_option('im-wp-lite-mb-settings');

