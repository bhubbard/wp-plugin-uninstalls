<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifyodoo_url');
delete_site_option('notifyodoo_url');
delete_option('notifyodoo_notify_about_new_customer');
delete_site_option('notifyodoo_notify_about_new_customer');
delete_option('notifyodoo_notify_about_new_order');
delete_site_option('notifyodoo_notify_about_new_order');
delete_option('notifyodoo_add_tracking_image');
delete_site_option('notifyodoo_add_tracking_image');
delete_option('notifyodoo_allow_ip_address');
delete_site_option('notifyodoo_allow_ip_address');
delete_option('notifyodoo_last_access_ip_address');
delete_site_option('notifyodoo_last_access_ip_address');

