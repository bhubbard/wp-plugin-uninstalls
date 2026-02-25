<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpgc-identifying-enable-private');
delete_site_option('bpgc-identifying-enable-private');
delete_option('bpgc-identifying-enable-public');
delete_site_option('bpgc-identifying-enable-public');
delete_option('bpgc-member-control-enable-private');
delete_site_option('bpgc-member-control-enable-private');
delete_option('bpgc-member-control-enable-public');
delete_site_option('bpgc-member-control-enable-public');
delete_option('bpgc-group-admin-can-add-existing');
delete_site_option('bpgc-group-admin-can-add-existing');
delete_option('user-groups-have-member-control-existing');
delete_site_option('user-groups-have-member-control-existing');
delete_option('bpgc-group-admin-can-add-new');
delete_site_option('bpgc-group-admin-can-add-new');
delete_option('user-groups-have-member-control-new');
delete_site_option('user-groups-have-member-control-new');
delete_option('bpgc-users-can-create-groups');
delete_site_option('bpgc-users-can-create-groups');
delete_option('bpgc-group-admin-can-delete');
delete_site_option('bpgc-group-admin-can-delete');
delete_option('bpgc-text-before-identifying');
delete_site_option('bpgc-text-before-identifying');
delete_option('bpgc-users-can-select-identifying');
delete_site_option('bpgc-users-can-select-identifying');
delete_option('bpgc-site-admins-can-select-identifying');
delete_site_option('bpgc-site-admins-can-select-identifying');
delete_option('bpgc-group-admins-can-select-identifying');
delete_site_option('bpgc-group-admins-can-select-identifying');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bpgc-group-admin-can-add-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

