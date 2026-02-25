<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7_icons_and_labels_settings');
delete_site_option('cf7_icons_and_labels_settings');

