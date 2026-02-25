<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snowstorm_flakesMax');
delete_site_option('snowstorm_flakesMax');
delete_option('snowstorm_flakesMaxActive');
delete_site_option('snowstorm_flakesMaxActive');
delete_option('snowstorm_animationInterval');
delete_site_option('snowstorm_animationInterval');
delete_option('snowstorm_excludeMobile');
delete_site_option('snowstorm_excludeMobile');
delete_option('snowstorm_followMouse');
delete_site_option('snowstorm_followMouse');
delete_option('snowstorm_snowColor');
delete_site_option('snowstorm_snowColor');
delete_option('snowstorm_snowCharacter');
delete_site_option('snowstorm_snowCharacter');
delete_option('snowstorm_snowStick');
delete_site_option('snowstorm_snowStick');
delete_option('snowstorm_useMeltEffect');
delete_site_option('snowstorm_useMeltEffect');
delete_option('snowstorm_useTwinkleEffect');
delete_site_option('snowstorm_useTwinkleEffect');
delete_option('snowstorm_ratereview_scheduled');
delete_site_option('snowstorm_ratereview_scheduled');
delete_option('snowstorm_showmessage_ratereview');
delete_site_option('snowstorm_showmessage_ratereview');
delete_option('snowstorm_hidemessage_ratereview');
delete_site_option('snowstorm_hidemessage_ratereview');
delete_option('snowstorm_dismissed-ratereview');
delete_site_option('snowstorm_dismissed-ratereview');
delete_option('snowstorm_pp');
delete_site_option('snowstorm_pp');
delete_option('snow_storm_smart_rating_dismissed');
delete_site_option('snow_storm_smart_rating_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'snowstorm_dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'snowstorm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('snowstorm_ratereviewhook');

