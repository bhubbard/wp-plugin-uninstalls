<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('la_sentinelle-honeypot');
delete_site_option('la_sentinelle-honeypot');
delete_option('la_sentinelle-nonce');
delete_site_option('la_sentinelle-nonce');
delete_option('la_sentinelle-timeout');
delete_site_option('la_sentinelle-timeout');
delete_option('la_sentinelle-sfs');
delete_site_option('la_sentinelle-sfs');
delete_option('la_sentinelle-ajax');
delete_site_option('la_sentinelle-ajax');
delete_option('la_sentinelle-wpcomment');
delete_site_option('la_sentinelle-wpcomment');
delete_option('la_sentinelle-wplogin');
delete_site_option('la_sentinelle-wplogin');
delete_option('la_sentinelle-wppassword');
delete_site_option('la_sentinelle-wppassword');
delete_option('la_sentinelle-wpregister');
delete_site_option('la_sentinelle-wpregister');
delete_option('la_sentinelle-everest');
delete_site_option('la_sentinelle-everest');
delete_option('la_sentinelle-formidable');
delete_site_option('la_sentinelle-formidable');
delete_option('la_sentinelle-forminator');
delete_site_option('la_sentinelle-forminator');
delete_option('la_sentinelle-noptin');
delete_site_option('la_sentinelle-noptin');
delete_option('la_sentinelle-woo-registration');
delete_site_option('la_sentinelle-woo-registration');
delete_option('la_sentinelle-wpforms');
delete_site_option('la_sentinelle-wpforms');
delete_option('la_sentinelle-wpjobmanager');
delete_site_option('la_sentinelle-wpjobmanager');
delete_option('la_sentinelle-save_comments');
delete_site_option('la_sentinelle-save_comments');
delete_option('la_sentinelle-remove_comments');
delete_site_option('la_sentinelle-remove_comments');
delete_option('la_sentinelle-caldera_blocked');
delete_site_option('la_sentinelle-caldera_blocked');
delete_option('la_sentinelle-cf7_blocked');
delete_site_option('la_sentinelle-cf7_blocked');
delete_option('la_sentinelle-everest_blocked');
delete_site_option('la_sentinelle-everest_blocked');
delete_option('la_sentinelle-experiment');
delete_site_option('la_sentinelle-experiment');
delete_option('la_sentinelle-formidable_blocked');
delete_site_option('la_sentinelle-formidable_blocked');
delete_option('la_sentinelle-forminator_blocked');
delete_site_option('la_sentinelle-forminator_blocked');
delete_option('la_sentinelle-honeypot_value');
delete_site_option('la_sentinelle-honeypot_value');
delete_option('la_sentinelle-noptin_blocked');
delete_site_option('la_sentinelle-noptin_blocked');
delete_option('la_sentinelle-version');
delete_site_option('la_sentinelle-version');
delete_option('la_sentinelle-wpcomments_blocked');
delete_site_option('la_sentinelle-wpcomments_blocked');
delete_option('la_sentinelle-wpforms_blocked');
delete_site_option('la_sentinelle-wpforms_blocked');
delete_option('la_sentinelle-wpjobmanager_blocked');
delete_site_option('la_sentinelle-wpjobmanager_blocked');
delete_option('la_sentinelle-wplogin_blocked');
delete_site_option('la_sentinelle-wplogin_blocked');
delete_option('la_sentinelle-wppassword_blocked');
delete_site_option('la_sentinelle-wppassword_blocked');
delete_option('la_sentinelle-wpregister_blocked');
delete_site_option('la_sentinelle-wpregister_blocked');
delete_option('la_sentinelle-edd-disable-ajax');
delete_site_option('la_sentinelle-edd-disable-ajax');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lasent_plugin_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lasent_plugin_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lasent_plugin_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lasent_plugin_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lasent_spamfilters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lasent_spamfilters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lasent_spamfilters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lasent_spamfilters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'la_sentinelle_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'la_sentinelle_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'la_sentinelle_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'la_sentinelle_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'la_sentinelle_honeypot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'la_sentinelle_honeypot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'la_sentinelle_honeypot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'la_sentinelle_honeypot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'la_sentinelle_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'la_sentinelle_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'la_sentinelle_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'la_sentinelle_timeout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'la_sentinelle_ajax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'la_sentinelle_ajax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'la_sentinelle_ajax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'la_sentinelle_ajax' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'la_sentinelle_sfs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'la_sentinelle_sfs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'la_sentinelle_sfs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'la_sentinelle_sfs' ) );

