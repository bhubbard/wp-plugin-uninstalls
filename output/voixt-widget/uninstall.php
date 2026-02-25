<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voixt_agent_id');
delete_site_option('voixt_agent_id');
delete_option('voixt_widget_style');
delete_site_option('voixt_widget_style');
delete_option('voixt_widget_position');
delete_site_option('voixt_widget_position');

