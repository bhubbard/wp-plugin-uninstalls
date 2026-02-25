<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('terms_and_conditions_sitename');
delete_site_option('terms_and_conditions_sitename');
delete_option('terms_and_conditions_version');
delete_site_option('terms_and_conditions_version');

