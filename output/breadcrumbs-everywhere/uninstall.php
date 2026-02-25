<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crumbs-setting-one');
delete_site_option('crumbs-setting-one');
delete_option('crumbs-setting-two');
delete_site_option('crumbs-setting-two');
delete_option('crumbs-setting-three');
delete_site_option('crumbs-setting-three');
delete_option('crumbs-db-version');
delete_site_option('crumbs-db-version');

