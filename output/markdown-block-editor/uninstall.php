<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('markdown_block_editor_settings');
delete_site_option('markdown_block_editor_settings');

