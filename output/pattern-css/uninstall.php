<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcss_global_css');
delete_site_option('pcss_global_css');
delete_option('pcss_global_css_compiled');
delete_site_option('pcss_global_css_compiled');

