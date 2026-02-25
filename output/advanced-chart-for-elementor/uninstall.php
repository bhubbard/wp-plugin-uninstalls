<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfe_dismiss');
delete_site_option('acfe_dismiss');
delete_option('acfe-top-notice');
delete_site_option('acfe-top-notice');

