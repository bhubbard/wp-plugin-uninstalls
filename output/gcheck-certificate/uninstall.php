<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcheck_version');
delete_site_option('gcheck_version');
delete_option('gcheck_current_security_code');
delete_site_option('gcheck_current_security_code');
delete_option('gcheck_show_detailed_instructions');
delete_site_option('gcheck_show_detailed_instructions');

