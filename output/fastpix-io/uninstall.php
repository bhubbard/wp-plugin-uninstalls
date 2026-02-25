<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fastpix_api_key');
delete_site_option('fastpix_api_key');
delete_option('fastpix_api_secret');
delete_site_option('fastpix_api_secret');
delete_option('fastpix_encryption_key');
delete_site_option('fastpix_encryption_key');
delete_option('fastpix_api_key_encrypted');
delete_site_option('fastpix_api_key_encrypted');
delete_option('fastpix_api_secret_encrypted');
delete_site_option('fastpix_api_secret_encrypted');
delete_option('fastpix_videos');
delete_site_option('fastpix_videos');

