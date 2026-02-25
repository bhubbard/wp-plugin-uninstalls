<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdevs_foh_column_order');
delete_site_option('wdevs_foh_column_order');
delete_option('wdevs_foh_selected_fields');
delete_site_option('wdevs_foh_selected_fields');

