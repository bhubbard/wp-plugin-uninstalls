<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gothamazon_option_aturner');
delete_site_option('gothamazon_option_aturner');
delete_option('gothamazon_ama_kapsule_apijeton');
delete_site_option('gothamazon_ama_kapsule_apijeton');
delete_option('gothamazon_ama_login');
delete_site_option('gothamazon_ama_login');
delete_option('gothamazon_option_powered');
delete_site_option('gothamazon_option_powered');
delete_option('gothamazon_version');
delete_site_option('gothamazon_version');
delete_option('gothamazon_option_marketplace');
delete_site_option('gothamazon_option_marketplace');
delete_option('gothamazon_ama_key');
delete_site_option('gothamazon_ama_key');
delete_option('gothamazon_ama_track');
delete_site_option('gothamazon_ama_track');
delete_option('gothamazon_option_amaprime');
delete_site_option('gothamazon_option_amaprime');
delete_option('gothamazon_option_cachingtime');
delete_site_option('gothamazon_option_cachingtime');
delete_option('gothamazon_option_neufunik');
delete_site_option('gothamazon_option_neufunik');
delete_option('gothamazon_option_sortbay');
delete_site_option('gothamazon_option_sortbay');
delete_option('gothamazon_option_vendeur');
delete_site_option('gothamazon_option_vendeur');
delete_option('gothamazon_option_cloaking');
delete_site_option('gothamazon_option_cloaking');
delete_option('gothamazon_option_cloakingimage');
delete_site_option('gothamazon_option_cloakingimage');
delete_option('gothamazon_option_css');
delete_site_option('gothamazon_option_css');
delete_option('gothamazon_option_legal');
delete_site_option('gothamazon_option_legal');
delete_option('gothamazon_option_economycostapi');
delete_site_option('gothamazon_option_economycostapi');
delete_option('gothamazon_option_speedboutique');
delete_site_option('gothamazon_option_speedboutique');
delete_option('gtz_tokyo4');
delete_site_option('gtz_tokyo4');
delete_option('gtz_tokyo4_3bay');
delete_site_option('gtz_tokyo4_3bay');
delete_option('gtz_linquery_default');
delete_site_option('gtz_linquery_default');
delete_option('gtz_awin_ref_id');
delete_site_option('gtz_awin_ref_id');
delete_option('gothamazon_option_prixbarre');
delete_site_option('gothamazon_option_prixbarre');
delete_option('gothamazon_option_rating');
delete_site_option('gothamazon_option_rating');
delete_option('gothamazon_option_boodisplayprice');
delete_site_option('gothamazon_option_boodisplayprice');
delete_option('gothamazon_option_hidetitre');
delete_site_option('gothamazon_option_hidetitre');
delete_option('gothamazon_option_color_cta');
delete_site_option('gothamazon_option_color_cta');
delete_option('gothamazon_option_color_price_bg');
delete_site_option('gothamazon_option_color_price_bg');
delete_option('gothamazon_option_marchandlogo');
delete_site_option('gothamazon_option_marchandlogo');
delete_option('gothamazon_ama_track2');
delete_site_option('gothamazon_ama_track2');
delete_option('gothamazon_option_urlgta');
delete_site_option('gothamazon_option_urlgta');
delete_option('gothamazon_option_css_rowshop');
delete_site_option('gothamazon_option_css_rowshop');
delete_option('gothamazon_option_css_rowcatspeed');
delete_site_option('gothamazon_option_css_rowcatspeed');
delete_option('gothamazon_option_css_yourstyle');
delete_site_option('gothamazon_option_css_yourstyle');

// Clear Cron Jobs
wp_clear_scheduled_hook('gtz_suppression_mensuelle_fichiers');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gotham_dynamic_store_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gotham_dynamic_store_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gotham_dynamic_store_widget' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gotham_dynamic_store_widget' ) );

