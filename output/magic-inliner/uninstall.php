<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mi_registered_css_styles');
delete_site_option('mi_registered_css_styles');
delete_option('mi_registered_js_scripts');
delete_site_option('mi_registered_js_scripts');
delete_option('mi_registered_css_handles');
delete_site_option('mi_registered_css_handles');
delete_option('mi_registered_js_handles');
delete_site_option('mi_registered_js_handles');

