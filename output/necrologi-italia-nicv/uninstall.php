<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nicv_settings');
delete_site_option('nicv_settings');
delete_option('nicv_css_settings');
delete_site_option('nicv_css_settings');

