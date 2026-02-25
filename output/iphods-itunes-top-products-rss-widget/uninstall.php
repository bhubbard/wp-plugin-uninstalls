<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iphods_activation_permissions');
delete_site_option('iphods_activation_permissions');
delete_option('iphods_activation_permission');
delete_site_option('iphods_activation_permission');
delete_option('iphods_backlink_permission');
delete_site_option('iphods_backlink_permission');
delete_option('iphods_affiliate_program');
delete_site_option('iphods_affiliate_program');
delete_option('iphods_backlink_permissions');
delete_site_option('iphods_backlink_permissions');

