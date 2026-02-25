<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('at_block_count');
delete_site_option('at_block_count');
delete_option('at_block');
delete_site_option('at_block');
delete_option('at_message');
delete_site_option('at_message');

