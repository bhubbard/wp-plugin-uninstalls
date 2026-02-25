<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gt_async_asset_loader_db_version');
delete_site_option('gt_async_asset_loader_db_version');
delete_option('footer_javascript');
delete_site_option('footer_javascript');

