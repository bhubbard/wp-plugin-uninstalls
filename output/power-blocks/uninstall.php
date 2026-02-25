<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('powerblocks_installed');
delete_site_option('powerblocks_installed');
delete_option('powerblocks_version');
delete_site_option('powerblocks_version');

