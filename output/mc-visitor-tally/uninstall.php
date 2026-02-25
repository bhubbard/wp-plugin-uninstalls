<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc6397vt_installed');
delete_site_option('mc6397vt_installed');
delete_option('mc6397vt_showmonths');
delete_site_option('mc6397vt_showmonths');
delete_option('mc6397vt_showyear');
delete_site_option('mc6397vt_showyear');
delete_option('mc6397vt_table_type');
delete_site_option('mc6397vt_table_type');
delete_option('mc6397vt_table_color');
delete_site_option('mc6397vt_table_color');
delete_option('mc6397vt_table_resp');
delete_site_option('mc6397vt_table_resp');
delete_option('mc6397vt_deleteTable');
delete_site_option('mc6397vt_deleteTable');
delete_option('widget_mc6397vt_widget');
delete_site_option('widget_mc6397vt_widget');

