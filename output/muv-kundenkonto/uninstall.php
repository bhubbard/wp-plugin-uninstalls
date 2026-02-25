<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muv-kk-api-key');
delete_site_option('muv-kk-api-key');
delete_option('muv-kk-zugang-loeschen');
delete_site_option('muv-kk-zugang-loeschen');
delete_option('muv-kk-erlaube-pseudo-login');
delete_site_option('muv-kk-erlaube-pseudo-login');
delete_option('muv-kk-login-domain');
delete_site_option('muv-kk-login-domain');
delete_option('muv-kk-logout');
delete_site_option('muv-kk-logout');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-betreff' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-typ' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-html' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('muv-kk-email-von-name');
delete_site_option('muv-kk-email-von-name');
delete_option('muv-kk-email-von-mail');
delete_site_option('muv-kk-email-von-mail');
delete_option('muv-kk-email-vorlage-logo');
delete_site_option('muv-kk-email-vorlage-logo');
delete_option('muv-kk-email-vorlage-footer');
delete_site_option('muv-kk-email-vorlage-footer');
delete_option('muv-kk-email-vorlage-color');
delete_site_option('muv-kk-email-vorlage-color');
delete_option('muv-kk-email-vorlage-color-text');
delete_site_option('muv-kk-email-vorlage-color-text');
delete_option('muv-kk-email-vorlage-bgcolor-body');
delete_site_option('muv-kk-email-vorlage-bgcolor-body');
delete_option('muv-kk-email-vorlage-bgcolor-content');
delete_site_option('muv-kk-email-vorlage-bgcolor-content');
delete_option('muv-kk-email-vorlage-konto-aktivieren-betreff');
delete_site_option('muv-kk-email-vorlage-konto-aktivieren-betreff');
delete_option('muv-kk-email-vorlage-konto-aktivieren-typ');
delete_site_option('muv-kk-email-vorlage-konto-aktivieren-typ');
delete_option('muv-kk-email-vorlage-konto-aktivieren-text');
delete_site_option('muv-kk-email-vorlage-konto-aktivieren-text');
delete_option('muv-kk-email-vorlage-konto-aktivieren-html');
delete_site_option('muv-kk-email-vorlage-konto-aktivieren-html');
delete_option('muv-kk-email-vorlage-pwd-vergessen-betreff');
delete_site_option('muv-kk-email-vorlage-pwd-vergessen-betreff');
delete_option('muv-kk-email-vorlage-pwd-vergessen-typ');
delete_site_option('muv-kk-email-vorlage-pwd-vergessen-typ');
delete_option('muv-kk-email-vorlage-pwd-vergessen-text');
delete_site_option('muv-kk-email-vorlage-pwd-vergessen-text');
delete_option('muv-kk-email-vorlage-pwd-vergessen-html');
delete_site_option('muv-kk-email-vorlage-pwd-vergessen-html');
delete_option('muv-kk-email-vorlage-pwd-geaendert-betreff');
delete_site_option('muv-kk-email-vorlage-pwd-geaendert-betreff');
delete_option('muv-kk-email-vorlage-pwd-geaendert-typ');
delete_site_option('muv-kk-email-vorlage-pwd-geaendert-typ');
delete_option('muv-kk-email-vorlage-pwd-geaendert-text');
delete_site_option('muv-kk-email-vorlage-pwd-geaendert-text');
delete_option('muv-kk-email-vorlage-pwd-geaendert-html');
delete_site_option('muv-kk-email-vorlage-pwd-geaendert-html');
delete_option('muv-kk-email-vorlage-email-aktivieren-betreff');
delete_site_option('muv-kk-email-vorlage-email-aktivieren-betreff');
delete_option('muv-kk-email-vorlage-email-aktivieren-typ');
delete_site_option('muv-kk-email-vorlage-email-aktivieren-typ');
delete_option('muv-kk-email-vorlage-email-aktivieren-text');
delete_site_option('muv-kk-email-vorlage-email-aktivieren-text');
delete_option('muv-kk-email-vorlage-email-aktivieren-html');
delete_site_option('muv-kk-email-vorlage-email-aktivieren-html');
delete_option('muv-kk-email-vorlage-email-geaendert-betreff');
delete_site_option('muv-kk-email-vorlage-email-geaendert-betreff');
delete_option('muv-kk-email-vorlage-email-geaendert-typ');
delete_site_option('muv-kk-email-vorlage-email-geaendert-typ');
delete_option('muv-kk-email-vorlage-email-geaendert-text');
delete_site_option('muv-kk-email-vorlage-email-geaendert-text');
delete_option('muv-kk-email-vorlage-email-geaendert-html');
delete_site_option('muv-kk-email-vorlage-email-geaendert-html');
delete_option('muv-kk-email-vorlage-konto-loeschen-betreff');
delete_site_option('muv-kk-email-vorlage-konto-loeschen-betreff');
delete_option('muv-kk-email-vorlage-konto-loeschen-typ');
delete_site_option('muv-kk-email-vorlage-konto-loeschen-typ');
delete_option('muv-kk-email-vorlage-konto-loeschen-text');
delete_site_option('muv-kk-email-vorlage-konto-loeschen-text');
delete_option('muv-kk-email-vorlage-konto-loeschen-html');
delete_site_option('muv-kk-email-vorlage-konto-loeschen-html');

// Clear Cron Jobs
wp_clear_scheduled_hook('muv-kk-cron-delete-accounts');

