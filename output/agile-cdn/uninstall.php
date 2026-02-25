<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agile_cdn_url');
delete_site_option('agile_cdn_url');
delete_option('agile_cdn_prefix');
delete_site_option('agile_cdn_prefix');
delete_option('agile_cdn_enabled');
delete_site_option('agile_cdn_enabled');

