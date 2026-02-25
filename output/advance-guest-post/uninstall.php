<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posttitle');
delete_site_option('posttitle');
delete_option('postdiscription');
delete_site_option('postdiscription');
delete_option('postauthor');
delete_site_option('postauthor');
delete_option('postcategory');
delete_site_option('postcategory');
delete_option('uploadimage');
delete_site_option('uploadimage');
delete_option('posttitleenabledisables');
delete_site_option('posttitleenabledisables');
delete_option('postdiscriptionenabledisable');
delete_site_option('postdiscriptionenabledisable');
delete_option('postauthorenabledisable');
delete_site_option('postauthorenabledisable');
delete_option('postcategoryenabledisable');
delete_site_option('postcategoryenabledisable');
delete_option('uploadimageenabledisable');
delete_site_option('uploadimageenabledisable');
delete_option('posttype');
delete_site_option('posttype');
delete_option('posttaxonomies');
delete_site_option('posttaxonomies');
delete_option('autopublish');
delete_site_option('autopublish');
delete_option('enablecaptcha');
delete_site_option('enablecaptcha');
delete_option('captchapublickey');
delete_site_option('captchapublickey');
delete_option('guestpost');
delete_site_option('guestpost');
delete_option('captchaprivatekey');
delete_site_option('captchaprivatekey');
delete_option('successmessage');
delete_site_option('successmessage');
delete_option('imagesize');
delete_site_option('imagesize');
delete_option('productshortdiscription');
delete_site_option('productshortdiscription');
delete_option('producttags');
delete_site_option('producttags');
delete_option('tagsenabledisable');
delete_site_option('tagsenabledisable');
delete_option('expertsenabledisable');
delete_site_option('expertsenabledisable');
delete_option('titlerequire');
delete_site_option('titlerequire');
delete_option('featurerequire');
delete_site_option('featurerequire');
delete_option('discriptionrequire');
delete_site_option('discriptionrequire');
delete_option('categoryrequire');
delete_site_option('categoryrequire');
delete_option('tagsrequire');
delete_site_option('tagsrequire');
delete_option('expertrequire');
delete_site_option('expertrequire');
delete_option('multicategory');
delete_site_option('multicategory');
delete_option('posttags');
delete_site_option('posttags');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

