<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scifi-task-manager_roles');
delete_site_option('scifi-task-manager_roles');
delete_option('scifi-task-manager_menu');
delete_site_option('scifi-task-manager_menu');
delete_option('scifi-task-manager_tags');
delete_site_option('scifi-task-manager_tags');
delete_option('scifi-task-manager_menu_item');
delete_site_option('scifi-task-manager_menu_item');
delete_option('scifi-task-manager_priorities');
delete_site_option('scifi-task-manager_priorities');
delete_option('scifi-task-manager_statuses');
delete_site_option('scifi-task-manager_statuses');
delete_option('scifi-task-manager_mailer');
delete_site_option('scifi-task-manager_mailer');
delete_option('scifi-task-manager_mail_from');
delete_site_option('scifi-task-manager_mail_from');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scifi-task-manager_assignee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scifi-task-manager_assignee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scifi-task-manager_assignee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scifi-task-manager_assignee' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scifi_task_manager_admin_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scifi_task_manager_admin_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scifi_task_manager_admin_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scifi_task_manager_admin_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scifi_task_manager_recieve_mails' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scifi_task_manager_recieve_mails' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scifi_task_manager_recieve_mails' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scifi_task_manager_recieve_mails' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scifi-task-manager_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scifi-task-manager_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scifi-task-manager_deadline' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scifi-task-manager_deadline' ) );

