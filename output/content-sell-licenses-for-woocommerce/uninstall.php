<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csellwoo_enabled');
delete_site_option('csellwoo_enabled');
delete_option('csellwoo_licenses_data');
delete_site_option('csellwoo_licenses_data');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('csellwoo_buttonclasses');
delete_site_option('csellwoo_buttonclasses');
delete_option('csellwoo_formclasses');
delete_site_option('csellwoo_formclasses');
delete_option('csellwoo_alertmsg');
delete_site_option('csellwoo_alertmsg');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('csellwoo_rcd');
delete_site_option('csellwoo_rcd');
delete_option('csellwoo_pnotice');
delete_site_option('csellwoo_pnotice');
delete_option('csellwoo_pnoticetext');
delete_site_option('csellwoo_pnoticetext');
delete_option('csellwoo_ptype');
delete_site_option('csellwoo_ptype');
delete_option('woocommerce_csellwoo_order_email_settings');
delete_site_option('woocommerce_csellwoo_order_email_settings');
delete_option('csellwoo_ptitle');
delete_site_option('csellwoo_ptitle');
delete_option('csellwoo_pdesc');
delete_site_option('csellwoo_pdesc');
delete_option('csellwoo_showproducts');
delete_site_option('csellwoo_showproducts');
delete_option('csellwoo_spf');
delete_site_option('csellwoo_spf');
delete_option('csellwoo_loginlink');
delete_site_option('csellwoo_loginlink');
delete_option('wc_price_based_country_version');
delete_site_option('wc_price_based_country_version');
delete_option('_oga_wppbc_countries_groups');
delete_site_option('_oga_wppbc_countries_groups');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');

// Delete Transients
delete_transient('csellwoo_unistall');
delete_site_transient('csellwoo_unistall');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_protected' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_csellwoo_lic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_csellwoo_lic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_csellwoo_lic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_csellwoo_lic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ptext1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ptext1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ptext1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ptext1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_csellwoo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_csellwoo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_csellwoo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_csellwoo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_data' ) );

