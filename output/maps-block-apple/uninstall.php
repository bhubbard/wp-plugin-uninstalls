<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maps_block_apple');
delete_site_option('maps_block_apple');
delete_option('amfwp_settings');
delete_site_option('amfwp_settings');
delete_option('maps_block_apple_team_id');
delete_site_option('maps_block_apple_team_id');
delete_option('maps_block_apple_key_id');
delete_site_option('maps_block_apple_key_id');
delete_option('maps_block_apple_private_key');
delete_site_option('maps_block_apple_private_key');

