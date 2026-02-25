<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('wemono_plugin_version');
delete_site_option('wemono_plugin_version');
delete_option('wemono_auto_update_enabled');
delete_site_option('wemono_auto_update_enabled');

// Delete Transients
delete_transient('wemono_plugin_data_wc-wemono');
delete_site_transient('wemono_plugin_data_wc-wemono');

