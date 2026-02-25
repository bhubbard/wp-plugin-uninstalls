<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmb_blocks_display_settings');
delete_site_option('wpmb_blocks_display_settings');
delete_option('wpmb_block_title');
delete_site_option('wpmb_block_title');
delete_option('wpmb_block_content');
delete_site_option('wpmb_block_content');

