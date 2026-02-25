<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('cpsh_plugin_admin_columns_info');
delete_site_transient('cpsh_plugin_admin_columns_info');
delete_transient('cpsh_plugin_timeout');
delete_site_transient('cpsh_plugin_timeout');

