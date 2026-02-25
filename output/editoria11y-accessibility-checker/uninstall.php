<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('editoria11y_db_version');
delete_site_option('editoria11y_db_version');
delete_option('ed11y_plugin_settings');
delete_site_option('ed11y_plugin_settings');

// Delete Transients
delete_transient('editoria11y_settings');
delete_site_transient('editoria11y_settings');
delete_transient('ed11y_got_ids');
delete_site_transient('ed11y_got_ids');
delete_transient('editoria11y_settinges');
delete_site_transient('editoria11y_settinges');

