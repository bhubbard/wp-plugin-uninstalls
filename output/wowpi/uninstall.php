<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wowpi_options');
delete_site_option('wowpi_options');
delete_option('wowpi_characters');
delete_site_option('wowpi_characters');
delete_option('wowpi_guilds_progress');
delete_site_option('wowpi_guilds_progress');
delete_option('wowpi_guilds');
delete_site_option('wowpi_guilds');
delete_option('wowpi_character_races');
delete_site_option('wowpi_character_races');
delete_option('wowpi_character_classes');
delete_site_option('wowpi_character_classes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wowpi_artifact_weapons_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wowpi_spells_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wowpi_realms_data');
delete_site_option('wowpi_realms_data');
delete_option('wowpi_character_achievements');
delete_site_option('wowpi_character_achievements');
delete_option('wowpi_guild_achievements');
delete_site_option('wowpi_guild_achievements');
delete_option('wowpi_progression_data');
delete_site_option('wowpi_progression_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wowpi_items_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wowpi_realms');
delete_site_option('wowpi_realms');
delete_option('styling');
delete_site_option('styling');

