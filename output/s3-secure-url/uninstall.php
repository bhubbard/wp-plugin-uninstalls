<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s3_secure_url_aws_access_key');
delete_site_option('s3_secure_url_aws_access_key');
delete_option('s3_secure_url_aws_secret_key');
delete_site_option('s3_secure_url_aws_secret_key');
delete_option('s3_secure_url_plugin_version');
delete_site_option('s3_secure_url_plugin_version');

