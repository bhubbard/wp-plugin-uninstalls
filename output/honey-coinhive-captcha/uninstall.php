<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chc_on_login');
delete_site_option('chc_on_login');
delete_option('chc_site_key');
delete_site_option('chc_site_key');
delete_option('chc_secret_key');
delete_site_option('chc_secret_key');
delete_option('chc_hashcount');
delete_site_option('chc_hashcount');
delete_option('chc_color_option');
delete_site_option('chc_color_option');
delete_option('chc_on_comment');
delete_site_option('chc_on_comment');
delete_option('chc_on_woocommerce');
delete_site_option('chc_on_woocommerce');
delete_option('chc_exlude_ips');
delete_site_option('chc_exlude_ips');
delete_option('chc_exlude_ips_forwarded_for');
delete_site_option('chc_exlude_ips_forwarded_for');
delete_option('chc_db_version');
delete_site_option('chc_db_version');

// Delete Transients
delete_transient('chc-admin-notice-example');
delete_site_transient('chc-admin-notice-example');

