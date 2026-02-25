<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tp_width');
delete_site_option('tp_width');
delete_option('tp_height');
delete_site_option('tp_height');
delete_option('tp_select_change');
delete_site_option('tp_select_change');
delete_option('tp_display_alt');
delete_site_option('tp_display_alt');
delete_option('tp_description_position');
delete_site_option('tp_description_position');

