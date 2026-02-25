<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blacklist_local');
delete_site_option('blacklist_local');
delete_option('blacklist_exclude');
delete_site_option('blacklist_exclude');

// Delete Transients
delete_transient('blacklist_update_process');
delete_site_transient('blacklist_update_process');

