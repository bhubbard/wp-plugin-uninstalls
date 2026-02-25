<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpmt-ptot-donot-close');
delete_site_option('bbpmt-ptot-donot-close');
delete_option('bbpmt-ptot-del-comments');
delete_site_option('bbpmt-ptot-del-comments');
delete_option('bbpmt-ptot-add-author');
delete_site_option('bbpmt-ptot-add-author');
delete_option('bbpmt-ptot-anon-author');
delete_site_option('bbpmt-ptot-anon-author');
delete_option('bbpmt-ptot-finalcomment-cb');
delete_site_option('bbpmt-ptot-finalcomment-cb');
delete_option('bbpmt-ptot-finalcomment-link');
delete_site_option('bbpmt-ptot-finalcomment-link');
delete_option('bbpmt-ptot-finalcomment-text');
delete_site_option('bbpmt-ptot-finalcomment-text');
delete_option('bbpmt-ptot-cuttopic-cb');
delete_site_option('bbpmt-ptot-cuttopic-cb');
delete_option('bbpmt-ptot-cuttopic-nbr');
delete_site_option('bbpmt-ptot-cuttopic-nbr');
delete_option('bbpmt-ptot-cutcomment-cb');
delete_site_option('bbpmt-ptot-cutcomment-cb');
delete_option('bbpmt-ptot-cutcomment-nbr');
delete_site_option('bbpmt-ptot-cutcomment-nbr');
delete_option('bbpmt-ptot-add-post-link');
delete_site_option('bbpmt-ptot-add-post-link');
delete_option('bbpmt-ptot-close-for-comment');
delete_site_option('bbpmt-ptot-close-for-comment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbpmt_movedon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbpmt_movedon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbpmt_movedon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbpmt_movedon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbpmt_movedfrom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbpmt_movedfrom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbpmt_movedfrom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbpmt_movedfrom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_forum_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_forum_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_forum_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_forum_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_last_active_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_last_active_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_last_active_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_last_active_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbp_last_active_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bbpmt_zapped' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bbpmt_zapped' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bbpmt_zapped' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bbpmt_zapped' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bbpmt_convtoreply_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bbpmt_convtoreply_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bbpmt_convtoreply_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bbpmt_convtoreply_id' ) );

