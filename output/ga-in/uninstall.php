<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gainwp_got_updated');
delete_site_option('gainwp_got_updated');
delete_option('gainwp_redeemed_code');
delete_site_option('gainwp_redeemed_code');
delete_option('gainwp_network_options');
delete_site_option('gainwp_network_options');
delete_option('gainwp_options');
delete_site_option('gainwp_options');
delete_option('gainwp_version');
delete_site_option('gainwp_version');
delete_option('gadash_network_options');
delete_site_option('gadash_network_options');
delete_option('gadash_options');
delete_site_option('gadash_options');
delete_option('ga_dash_token');
delete_site_option('ga_dash_token');
delete_option('ga_dash_clientid');
delete_site_option('ga_dash_clientid');
delete_option('ga_dash_clientsecret');
delete_site_option('ga_dash_clientsecret');
delete_option('ga_dash_tableid_jail');
delete_site_option('ga_dash_tableid_jail');
delete_option('ga_dash_frontend');
delete_site_option('ga_dash_frontend');
delete_option('ga_dash_jailadmins');
delete_site_option('ga_dash_jailadmins');
delete_option('ga_dash_tracking_type');
delete_site_option('ga_dash_tracking_type');
delete_option('ga_dash_anonim');
delete_site_option('ga_dash_anonim');
delete_option('ga_dash_userapi');
delete_site_option('ga_dash_userapi');
delete_option('ga_event_tracking');
delete_site_option('ga_event_tracking');
delete_option('ga_event_downloads');
delete_site_option('ga_event_downloads');
delete_option('ga_target_geomap');
delete_site_option('ga_target_geomap');
delete_option('ga_realtime_pages');
delete_site_option('ga_realtime_pages');
delete_option('ga_dash_profile_list');
delete_site_option('ga_dash_profile_list');
delete_option('ga_dash_access');
delete_site_option('ga_dash_access');
delete_option('ga_dash_access_front');
delete_site_option('ga_dash_access_front');
delete_option('ga_dash_access_back');
delete_site_option('ga_dash_access_back');
delete_option('ga_dash_style');
delete_site_option('ga_dash_style');
delete_option('ga_dash_tracking');
delete_site_option('ga_dash_tracking');
delete_option('track_exclude');
delete_site_option('track_exclude');
delete_option('ga_dash_refresh_token');
delete_site_option('ga_dash_refresh_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'gainwp_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

