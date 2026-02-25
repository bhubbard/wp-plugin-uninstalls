<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('better_block_patterns');
delete_site_option('better_block_patterns');
delete_option('better_block_patterns_tools');
delete_site_option('better_block_patterns_tools');

