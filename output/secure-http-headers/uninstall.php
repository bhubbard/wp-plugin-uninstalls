<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magnisec_headers_redirect_option_server');
delete_site_option('magnisec_headers_redirect_option_server');

