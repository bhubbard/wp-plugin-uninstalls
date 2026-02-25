<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esfs_load_type');
delete_site_option('esfs_load_type');
delete_option('esfs_show_teams_list');
delete_site_option('esfs_show_teams_list');
delete_option('esfs_show_performances');
delete_site_option('esfs_show_performances');
delete_option('sportspress_link_players');
delete_site_option('sportspress_link_players');
delete_option('esfs_show_scoring_performances_list');
delete_site_option('esfs_show_scoring_performances_list');
delete_option('esfs_show_special_scoring_performances_list');
delete_site_option('esfs_show_special_scoring_performances_list');
delete_option('esfs_show_other_performances_list');
delete_site_option('esfs_show_other_performances_list');
delete_option('esfs_show_officials');
delete_site_option('esfs_show_officials');
delete_option('sportspress_link_officials');
delete_site_option('sportspress_link_officials');
delete_option('esfs_show_officials_list');
delete_site_option('esfs_show_officials_list');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sp_team' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sp_team' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sp_team' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sp_team' ) );

