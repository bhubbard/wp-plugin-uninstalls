<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xsffa_settings');
delete_site_option('xsffa_settings');
delete_option('xsffa_stats');
delete_site_option('xsffa_stats');

