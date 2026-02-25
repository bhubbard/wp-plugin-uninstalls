<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('im-wp-linker-lite-active');
delete_site_option('im-wp-linker-lite-active');
delete_option('im-wp-linker-lite-settings');
delete_site_option('im-wp-linker-lite-settings');

