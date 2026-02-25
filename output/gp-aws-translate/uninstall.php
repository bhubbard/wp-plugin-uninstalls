<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aws-region');
delete_site_option('aws-region');
delete_option('aws-account-id');
delete_site_option('aws-account-id');
delete_option('aws-secret-key');
delete_site_option('aws-secret-key');
delete_option('gp-source-language');
delete_site_option('gp-source-language');

