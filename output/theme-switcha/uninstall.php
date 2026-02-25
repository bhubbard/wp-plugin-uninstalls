<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('theme_switcha_options');
delete_site_option('theme_switcha_options');
delete_option('theme-switcha-dismiss-notice');
delete_site_option('theme-switcha-dismiss-notice');

