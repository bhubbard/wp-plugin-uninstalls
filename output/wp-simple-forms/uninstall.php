<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpleform-email');
delete_site_option('simpleform-email');
delete_option('simpleform-confirmation-message');
delete_site_option('simpleform-confirmation-message');
delete_option('wpsf_db_version');
delete_site_option('wpsf_db_version');

