<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vibe_bp_woo_sync_settings');
delete_site_option('vibe_bp_woo_sync_settings');

