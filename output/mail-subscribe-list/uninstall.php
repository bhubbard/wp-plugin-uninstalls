<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sml_subscribe_widget_title');
delete_site_option('sml_subscribe_widget_title');
delete_option('sml_subscribe_widget_prepend');
delete_site_option('sml_subscribe_widget_prepend');
delete_option('sml_subscribe_widget_jsthanks');
delete_site_option('sml_subscribe_widget_jsthanks');
delete_option('sml_subscribe_widget_thankyou');
delete_site_option('sml_subscribe_widget_thankyou');
delete_option('sml_subscribe_widget_showname');
delete_site_option('sml_subscribe_widget_showname');
delete_option('sml_subscribe_widget_nametxt');
delete_site_option('sml_subscribe_widget_nametxt');
delete_option('sml_subscribe_widget_nameholder');
delete_site_option('sml_subscribe_widget_nameholder');
delete_option('sml_subscribe_widget_emailtxt');
delete_site_option('sml_subscribe_widget_emailtxt');
delete_option('sml_subscribe_widget_emailholder');
delete_site_option('sml_subscribe_widget_emailholder');
delete_option('sml_subscribe_widget_showsubmit');
delete_site_option('sml_subscribe_widget_showsubmit');
delete_option('sml_subscribe_widget_submittxt');
delete_site_option('sml_subscribe_widget_submittxt');

