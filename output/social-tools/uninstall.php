<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adswst_version');
delete_site_option('adswst_version');
delete_option('adswst_settings');
delete_site_option('adswst_settings');

