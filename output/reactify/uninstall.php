<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reactify_reaction_title');
delete_site_option('reactify_reaction_title');
delete_option('reactify_reaction_title_enable');
delete_site_option('reactify_reaction_title_enable');
delete_option('reactify_selected_reaction_type');
delete_site_option('reactify_selected_reaction_type');
delete_option('reactify_custom_emojis');
delete_site_option('reactify_custom_emojis');
delete_option('reactify_reaction_title_enabled');
delete_site_option('reactify_reaction_title_enabled');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reactify_disable_reactions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reactify_disable_reactions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reactify_disable_reactions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reactify_disable_reactions' ) );

