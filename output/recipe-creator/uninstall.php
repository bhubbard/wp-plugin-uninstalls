<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recipe_creator__last_successful_migration');
delete_site_option('recipe_creator__last_successful_migration');
delete_option('recipe_creator__thumbnail_size');
delete_site_option('recipe_creator__thumbnail_size');
delete_option('recipe_creator__show_jump_to_recipe');
delete_site_option('recipe_creator__show_jump_to_recipe');
delete_option('recipe_creator__primary_color');
delete_site_option('recipe_creator__primary_color');
delete_option('recipe_creator__primary_color_contrast');
delete_site_option('recipe_creator__primary_color_contrast');
delete_option('recipe_creator__primary_color_light');
delete_site_option('recipe_creator__primary_color_light');
delete_option('recipe_creator__primary_color_light_contrast');
delete_site_option('recipe_creator__primary_color_light_contrast');
delete_option('recipe_creator__primary_color_dark');
delete_site_option('recipe_creator__primary_color_dark');
delete_option('recipe_creator__secondary_color');
delete_site_option('recipe_creator__secondary_color');
delete_option('recipe_creator__secondary_color_contrast');
delete_site_option('recipe_creator__secondary_color_contrast');
delete_option('recipe_creator__background_color');
delete_site_option('recipe_creator__background_color');
delete_option('recipe_creator__background_color_contrast');
delete_site_option('recipe_creator__background_color_contrast');
delete_option('recipe_creator__show_box_shadow');
delete_site_option('recipe_creator__show_box_shadow');
delete_option('recipe_creator__show_border');
delete_site_option('recipe_creator__show_border');
delete_option('recipe_creator__border_radius');
delete_site_option('recipe_creator__border_radius');
delete_option('recipe_creator__instagram__username');
delete_site_option('recipe_creator__instagram__username');
delete_option('recipe_creator__instagram__hashtag');
delete_site_option('recipe_creator__instagram__hashtag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_1_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_1_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_1_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_1_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_2_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_2_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_2_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_2_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_3_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_3_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_3_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_3_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_4_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_4_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_4_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_4_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recipe_creator__rating_5_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recipe_creator__rating_5_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recipe_creator__rating_5_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recipe_creator__rating_5_votes' ) );

