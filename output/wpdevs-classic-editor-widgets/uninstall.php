<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdevs_classic_editor_settings');
delete_site_option('wpdevs_classic_editor_settings');

