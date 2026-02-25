<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anti_block_settings');
delete_site_option('anti_block_settings');
delete_option('anti_block_deferred_admin_notices');
delete_site_option('anti_block_deferred_admin_notices');

