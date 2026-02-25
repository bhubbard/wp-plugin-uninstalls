<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sv-disper-bar-settings');
delete_site_option('sv-disper-bar-settings');
delete_option('sv-disper-bar-points');
delete_site_option('sv-disper-bar-points');
delete_option('sv-disper-bar-style');
delete_site_option('sv-disper-bar-style');

