<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email-customizer-redirected');
delete_site_option('email-customizer-redirected');
delete_option('email_customizer');
delete_site_option('email_customizer');

