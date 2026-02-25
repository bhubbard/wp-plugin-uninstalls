<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('botwp_custom_css_ver');
delete_site_option('botwp_custom_css_ver');

