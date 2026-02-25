<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aibuy_site');
delete_site_option('aibuy_site');
delete_option('aibuy_player');
delete_site_option('aibuy_player');

