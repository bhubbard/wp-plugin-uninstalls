<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no-unsafe-inline_version');
delete_site_option('no-unsafe-inline_version');
delete_option('no-unsafe-inline');
delete_site_option('no-unsafe-inline');
delete_option('no-unsafe-inline-tools');
delete_site_option('no-unsafe-inline-tools');
delete_option('no-unsafe-inline-base-rule');
delete_site_option('no-unsafe-inline-base-rule');
delete_option('no-unsafe-inline-global-settings');
delete_site_option('no-unsafe-inline-global-settings');
delete_option('no-unsafe-inline_db_version');
delete_site_option('no-unsafe-inline_db_version');

// Delete Transients
delete_transient('no_unsafe_inline_admin_notice');
delete_site_transient('no_unsafe_inline_admin_notice');

