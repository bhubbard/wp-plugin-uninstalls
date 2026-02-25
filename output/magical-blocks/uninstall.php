<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('magical_blocks_version');
delete_site_option('magical_blocks_version');
delete_option('magical_blocks_has_pro');
delete_site_option('magical_blocks_has_pro');
delete_option('magical_blocks_settings');
delete_site_option('magical_blocks_settings');

