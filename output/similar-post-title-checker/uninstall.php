<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_screen_options_limit');
delete_site_option('sp_screen_options_limit');
delete_option('sp_screen_options_minchar');
delete_site_option('sp_screen_options_minchar');

