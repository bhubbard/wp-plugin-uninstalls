<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tp_tooltip_speed');
delete_site_option('tp_tooltip_speed');
delete_option('tp_tooltip_width');
delete_site_option('tp_tooltip_width');
delete_option('tp_tooltip_delay');
delete_site_option('tp_tooltip_delay');
delete_option('tp_tooltip_bgcolor');
delete_site_option('tp_tooltip_bgcolor');
delete_option('tp_tooltip_color');
delete_site_option('tp_tooltip_color');
delete_option('tp_tooltip_position');
delete_site_option('tp_tooltip_position');
delete_option('tp_tooltip_display');
delete_site_option('tp_tooltip_display');

