<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmdetect_api_key');
delete_site_option('tmdetect_api_key');
delete_option('tmdetect_custom_blocklist');
delete_site_option('tmdetect_custom_blocklist');
delete_option('tmdetect_block_plus_emails');
delete_site_option('tmdetect_block_plus_emails');
delete_option('tmdetect_protect_comments');
delete_site_option('tmdetect_protect_comments');

