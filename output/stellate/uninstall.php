<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stellate_service_name');
delete_site_option('stellate_service_name');
delete_option('stellate_purging_token');
delete_site_option('stellate_purging_token');
delete_option('stellate_soft_purge');
delete_site_option('stellate_soft_purge');

