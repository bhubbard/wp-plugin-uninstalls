<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
delete_transient('zmtempformlocation');
delete_site_transient('zmtempformlocation');
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('zm_blockpatterns_data_cache');
delete_site_transient('zm_blockpatterns_data_cache');
delete_transient('zm_blockpatterns_category_cache');
delete_site_transient('zm_blockpatterns_category_cache');
delete_transient('zmdesignexplorer_cache');
delete_site_transient('zmdesignexplorer_cache');

