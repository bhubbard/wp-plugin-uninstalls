<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codex_bvwp');
delete_site_option('codex_bvwp');
delete_option('bvwp');
delete_site_option('bvwp');

