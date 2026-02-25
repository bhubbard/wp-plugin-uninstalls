<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyresh_version');
delete_site_option('easyresh_version');
delete_option('easyresh_secret_key_v2');
delete_site_option('easyresh_secret_key_v2');
delete_option('easyresh_public_key_v2');
delete_site_option('easyresh_public_key_v2');
delete_option('easyresh_secret_key_v3');
delete_site_option('easyresh_secret_key_v3');
delete_option('easyresh_public_key_v3');
delete_site_option('easyresh_public_key_v3');
delete_option('easyresh_v3_response_threshold');
delete_site_option('easyresh_v3_response_threshold');

