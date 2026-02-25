<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gutenberg_reusable_blocks_widgetopts');
delete_site_option('gutenberg_reusable_blocks_widgetopts');

