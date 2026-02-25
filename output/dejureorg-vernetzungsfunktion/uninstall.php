<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('djo_cache_prefix');
delete_site_option('djo_cache_prefix');
delete_option('djo_einstellungen');
delete_site_option('djo_einstellungen');

