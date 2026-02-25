<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spawning_block_ccbot');
delete_site_option('spawning_block_ccbot');
delete_option('spawning_block_gptbot');
delete_site_option('spawning_block_gptbot');
delete_option('block_ccbot');
delete_site_option('block_ccbot');
delete_option('block_gptbot');
delete_site_option('block_gptbot');

