<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oneclblf_selected_blocks_layout');
delete_site_option('oneclblf_selected_blocks_layout');
delete_option('oneclblf_selected_callouts_layout');
delete_site_option('oneclblf_selected_callouts_layout');

