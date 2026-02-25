<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voiceflow_project_id');
delete_site_option('voiceflow_project_id');
delete_option('voiceflow_widget_title');
delete_site_option('voiceflow_widget_title');
delete_option('voiceflow_widget_color');
delete_site_option('voiceflow_widget_color');

