<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eazyHTTPhead_checkbox_frame');
delete_site_option('eazyHTTPhead_checkbox_frame');
delete_option('eazyHTTPhead_checkbox_xss');
delete_site_option('eazyHTTPhead_checkbox_xss');
delete_option('eazyHTTPhead_checkbox_nosniff');
delete_site_option('eazyHTTPhead_checkbox_nosniff');

