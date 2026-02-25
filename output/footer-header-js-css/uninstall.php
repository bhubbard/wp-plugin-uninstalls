<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footer_header_js_and_css_settings');
delete_site_option('footer_header_js_and_css_settings');

