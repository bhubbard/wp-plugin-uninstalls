<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_wplogin_logo_header_msg');
delete_site_option('simple_wplogin_logo_header_msg');
delete_option('simple_wplogin_logo_footer');
delete_site_option('simple_wplogin_logo_footer');

