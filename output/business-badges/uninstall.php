<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BB_widget_gplus_act');
delete_site_option('BB_widget_gplus_act');
delete_option('BB_widget_facebook_act');
delete_site_option('BB_widget_facebook_act');
delete_option('BB_admin_title');
delete_site_option('BB_admin_title');
delete_option('BB_admin_number');
delete_site_option('BB_admin_number');
delete_option('BB_widget_title');
delete_site_option('BB_widget_title');
delete_option('BB_widget_urlgplus');
delete_site_option('BB_widget_urlgplus');
delete_option('BB_widget_urlfacebook');
delete_site_option('BB_widget_urlfacebook');
delete_option('BB_widget_altfacebook');
delete_site_option('BB_widget_altfacebook');
delete_option('BB_widget_idfacebook');
delete_site_option('BB_widget_idfacebook');
delete_option('BB_widget_bidfacebook');
delete_site_option('BB_widget_bidfacebook');
delete_option('BB_widget_keyfacebook');
delete_site_option('BB_widget_keyfacebook');
delete_option('BB_like_widget_title');
delete_site_option('BB_like_widget_title');
delete_option('BB_like_widget_gplus_act');
delete_site_option('BB_like_widget_gplus_act');
delete_option('BB_like_widget_facebook_act');
delete_site_option('BB_like_widget_facebook_act');

