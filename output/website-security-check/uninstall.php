<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('woocommerce_queue_flush_rewrite_rules');
delete_site_option('woocommerce_queue_flush_rewrite_rules');
delete_option('wsc_securitycheck');
delete_site_option('wsc_securitycheck');
delete_option('wsc_securitycheck_time');
delete_site_option('wsc_securitycheck_time');
delete_option('wsc_securitycheck_ignore');
delete_site_option('wsc_securitycheck_ignore');

// Delete Transients
delete_transient('wsc_activate');
delete_site_transient('wsc_activate');
delete_transient('wsc_restore');
delete_site_transient('wsc_restore');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

