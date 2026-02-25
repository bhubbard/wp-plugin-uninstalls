<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hpixl_securicheck_hotlinking_image_url');
delete_site_option('hpixl_securicheck_hotlinking_image_url');
delete_option('hpixl_securicheck_destinataire_email_notifications');
delete_site_option('hpixl_securicheck_destinataire_email_notifications');
delete_option('hpixl_securicheck_toggle_notifications');
delete_site_option('hpixl_securicheck_toggle_notifications');
delete_option('hpixl_securicheck_toggle_notifications_scan');
delete_site_option('hpixl_securicheck_toggle_notifications_scan');
delete_option('hpixl_securicheck_toggle_notifications_compte_admin');
delete_site_option('hpixl_securicheck_toggle_notifications_compte_admin');
delete_option('hpixl_securicheck_toggle_notifications_ip_bloquee');
delete_site_option('hpixl_securicheck_toggle_notifications_ip_bloquee');
delete_option('hpixl_securicheck_toggle_notifications_ip_debloquee');
delete_site_option('hpixl_securicheck_toggle_notifications_ip_debloquee');
delete_option('hpixl_securicheck_toggle_limite_nombre_audit');
delete_site_option('hpixl_securicheck_toggle_limite_nombre_audit');
delete_option('hpixl_securicheck_text_limite_nombre_audit');
delete_site_option('hpixl_securicheck_text_limite_nombre_audit');
delete_option('hpixl_securicheck_toggle_delete_audits_after_uninstall');
delete_site_option('hpixl_securicheck_toggle_delete_audits_after_uninstall');
delete_option('hpixl_securicheck_toggle_delete_reglages_after_uninstall');
delete_site_option('hpixl_securicheck_toggle_delete_reglages_after_uninstall');
delete_option('hpixl_securicheck_toggle_page_connexion_url');
delete_site_option('hpixl_securicheck_toggle_page_connexion_url');
delete_option('hpixl_securicheck_textarea_page_connexion_url');
delete_site_option('hpixl_securicheck_textarea_page_connexion_url');
delete_option('hpixl_securicheck_toggle_page_connexion_redirection');
delete_site_option('hpixl_securicheck_toggle_page_connexion_redirection');
delete_option('hpixl_securicheck_textarea_page_connexion_redirection');
delete_site_option('hpixl_securicheck_textarea_page_connexion_redirection');
delete_option('hpixl_securicheck_toggle_brute_force');
delete_site_option('hpixl_securicheck_toggle_brute_force');
delete_option('hpixl_securicheck_text_max_tentatives_brute_force');
delete_site_option('hpixl_securicheck_text_max_tentatives_brute_force');
delete_option('hpixl_securicheck_text_periode_tentatives_brute_force');
delete_site_option('hpixl_securicheck_text_periode_tentatives_brute_force');
delete_option('hpixl_securicheck_text_duree_blocage_brute_force');
delete_site_option('hpixl_securicheck_text_duree_blocage_brute_force');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hpixl_securicheck_db_version');
delete_site_option('hpixl_securicheck_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_blocked_ip_%', '_site_transient_blocked_ip_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hpixl_securicheck_reset_%', '_site_transient_hpixl_securicheck_reset_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('hpixl_securicheck_remind_me');
delete_site_transient('hpixl_securicheck_remind_me');

// Clear Cron Jobs
wp_clear_scheduled_hook('hpixl_securicheck_pro_automatisation_audit_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'securicheck_promo_banner_hidden_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'securicheck_promo_banner_hidden_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'securicheck_promo_banner_hidden_until' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'securicheck_promo_banner_hidden_until' ) );

