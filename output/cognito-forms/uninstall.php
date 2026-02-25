<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cognito_dev_environment');
delete_site_option('cognito_dev_environment');
delete_option('cognito_public_key');
delete_site_option('cognito_public_key');

