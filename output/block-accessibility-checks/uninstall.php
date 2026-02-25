<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_checks_options');
delete_site_option('block_checks_options');
delete_option('block_checks_site_editor_options');
delete_site_option('block_checks_site_editor_options');

