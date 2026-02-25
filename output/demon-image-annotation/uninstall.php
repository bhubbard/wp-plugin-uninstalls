<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('demon_image_annotation_display');
delete_site_option('demon_image_annotation_display');
delete_option('demon_image_annotation_comments');
delete_site_option('demon_image_annotation_comments');
delete_option('demon_image_annotation_postcontainer');
delete_site_option('demon_image_annotation_postcontainer');
delete_option('demon_image_annotation_admin');
delete_site_option('demon_image_annotation_admin');
delete_option('demon_image_annotation_autoresize');
delete_site_option('demon_image_annotation_autoresize');
delete_option('demon_image_annotation_numbering');
delete_site_option('demon_image_annotation_numbering');
delete_option('demon_image_annotation_clickable_text');
delete_site_option('demon_image_annotation_clickable_text');
delete_option('demon_image_annotation_mouseoverdesc');
delete_site_option('demon_image_annotation_mouseoverdesc');
delete_option('demon_image_annotation_maxlength');
delete_site_option('demon_image_annotation_maxlength');
delete_option('demon_image_annotation_linkoption');
delete_site_option('demon_image_annotation_linkoption');
delete_option('demon_image_annotation_linkdesc');
delete_site_option('demon_image_annotation_linkdesc');
delete_option('demon_image_annotation_thumbnail');
delete_site_option('demon_image_annotation_thumbnail');
delete_option('demon_image_annotation_pluginver');
delete_site_option('demon_image_annotation_pluginver');
delete_option('demon_image_annotation_autoimageid');
delete_site_option('demon_image_annotation_autoimageid');
delete_option('demon_image_annotation_autoapprove');
delete_site_option('demon_image_annotation_autoapprove');
delete_option('demon_image_annotation_gravatar');
delete_site_option('demon_image_annotation_gravatar');
delete_option('demon_image_annotation_gravatar_deafult');
delete_site_option('demon_image_annotation_gravatar_deafult');
delete_option('demon_image_annotation_everypage');
delete_site_option('demon_image_annotation_everypage');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dia_admin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dia_admin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dia_admin_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dia_admin_ignore_notice' ) );

