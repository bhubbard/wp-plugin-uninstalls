<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('wdc_version');
delete_site_option('wdc_version');
delete_option('wdc_update');
delete_site_option('wdc_update');

