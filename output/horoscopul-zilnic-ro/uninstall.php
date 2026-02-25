<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('horoscop_settings');
delete_site_option('horoscop_settings');
delete_option('h_settings');
delete_site_option('h_settings');

