<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RSS_Stream_hour');
delete_site_option('RSS_Stream_hour');
delete_option('RSS_Stream_date');
delete_site_option('RSS_Stream_date');
delete_option('RSS_Stream_timezone');
delete_site_option('RSS_Stream_timezone');
delete_option('RSS_Stream_plurkuser');
delete_site_option('RSS_Stream_plurkuser');
delete_option('RSS_Stream_twitteruser');
delete_site_option('RSS_Stream_twitteruser');
delete_option('RSS_Stream_twitterhyperlinks');
delete_site_option('RSS_Stream_twitterhyperlinks');
delete_option('RSS_Stream_twitterreplies');
delete_site_option('RSS_Stream_twitterreplies');
delete_option('RSS_Stream_jaikuuser');
delete_site_option('RSS_Stream_jaikuuser');
delete_option('RSS_Stream_jaikuhyperlinks');
delete_site_option('RSS_Stream_jaikuhyperlinks');
delete_option('RSS_Stream_jaikureplies');
delete_site_option('RSS_Stream_jaikureplies');
delete_option('RSS_Stream_delicioususer');
delete_site_option('RSS_Stream_delicioususer');
delete_option('RSS_Stream_deliciousshowtags');
delete_site_option('RSS_Stream_deliciousshowtags');
delete_option('RSS_Stream_deliciousfiltertag');
delete_site_option('RSS_Stream_deliciousfiltertag');
delete_option('RSS_Stream_deliciousshowdesc');
delete_site_option('RSS_Stream_deliciousshowdesc');
delete_option('RSS_Stream_lastfmuser');
delete_site_option('RSS_Stream_lastfmuser');
delete_option('RSS_Stream_blogfeed');
delete_site_option('RSS_Stream_blogfeed');
delete_option('RSS_Stream_blogshowautor');
delete_site_option('RSS_Stream_blogshowautor');
delete_option('RSS_Stream_flickruser');
delete_site_option('RSS_Stream_flickruser');
delete_option('RSS_Stream_photobucketfeed');
delete_site_option('RSS_Stream_photobucketfeed');
delete_option('RSS_Stream_facebookfeed');
delete_site_option('RSS_Stream_facebookfeed');
delete_option('RSS_Stream_pownceuser');
delete_site_option('RSS_Stream_pownceuser');
delete_option('RSS_Stream_pownceshowreplies');
delete_site_option('RSS_Stream_pownceshowreplies');
delete_option('RSS_Stream_powncelink');
delete_site_option('RSS_Stream_powncelink');
delete_option('RSS_Stream_powncediff');
delete_site_option('RSS_Stream_powncediff');
delete_option('RSS_Stream_genericfeednumber');
delete_site_option('RSS_Stream_genericfeednumber');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'RSS_Stream_genericfeed%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('RSS_Stream_timelapse');
delete_site_option('RSS_Stream_timelapse');
delete_option('RSS_Stream_UTF8');
delete_site_option('RSS_Stream_UTF8');

