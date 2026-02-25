<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsh_security_logs');
delete_site_option('wpsh_security_logs');
delete_option('wpsh_options');
delete_site_option('wpsh_options');

