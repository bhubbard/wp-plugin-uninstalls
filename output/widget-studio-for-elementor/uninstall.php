<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsfe_widget_registration_form');
delete_site_option('wsfe_widget_registration_form');
delete_option('wsfe_plugin_just_activated');
delete_site_option('wsfe_plugin_just_activated');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

