<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_post_types');
delete_site_option('pi_post_types');
delete_option('pi_hp_deactivated_plugins');
delete_site_option('pi_hp_deactivated_plugins');
delete_option('pi_op_deactivated_plugins');
delete_site_option('pi_op_deactivated_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pi_deactivated_plugins_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pi_deactivated_plugins_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pi_deactivated_plugins_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pi_deactivated_plugins_meta' ) );

