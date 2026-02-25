<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifixiousSourceId');
delete_site_option('notifixiousSourceId');
delete_option('notifixiousWidgetTitle');
delete_site_option('notifixiousWidgetTitle');
delete_option('notifixiousRegistered');
delete_site_option('notifixiousRegistered');
delete_option('notifixiousTagName');
delete_site_option('notifixiousTagName');
delete_option('notifixiousTagContent');
delete_site_option('notifixiousTagContent');
delete_option('notifixiousClaimed');
delete_site_option('notifixiousClaimed');
delete_option('notifixiousLoginValid');
delete_site_option('notifixiousLoginValid');
delete_option('notifixiousPassword');
delete_site_option('notifixiousPassword');
delete_option('notifixiousLogin');
delete_site_option('notifixiousLogin');
delete_option('notifixiouspassword');
delete_site_option('notifixiouspassword');
delete_option('notifixiouslogin');
delete_site_option('notifixiouslogin');

