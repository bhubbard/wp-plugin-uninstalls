<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('silktide_version');
delete_site_option('silktide_version');
delete_option('silktide_api_key');
delete_site_option('silktide_api_key');
delete_option('silktide_last_notified');
delete_site_option('silktide_last_notified');

