<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_convert_reusable_block_button');
delete_site_option('hide_convert_reusable_block_button');
delete_option('hide_edit_reusable_block_button');
delete_site_option('hide_edit_reusable_block_button');

