<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eab-codex-search-submenu');
delete_site_option('eab-codex-search-submenu');
delete_option('eab-admin-searches');
delete_site_option('eab-admin-searches');
delete_option('eab-wp-forums');
delete_site_option('eab-wp-forums');
delete_option('eab-wp-beginner');
delete_site_option('eab-wp-beginner');
delete_option('eab-custom-menu');
delete_site_option('eab-custom-menu');
delete_option('eab-genesis-menu');
delete_site_option('eab-genesis-menu');

