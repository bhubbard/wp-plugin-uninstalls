<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('managead_block_count');
delete_site_option('managead_block_count');
delete_option('managead_block_option');
delete_site_option('managead_block_option');
delete_option('managead_block_counter');
delete_site_option('managead_block_counter');

