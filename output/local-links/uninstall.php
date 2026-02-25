<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('locallinks_amazon');
delete_site_option('locallinks_amazon');
delete_option('locallinks_apple');
delete_site_option('locallinks_apple');
delete_option('locallinks_kobo');
delete_site_option('locallinks_kobo');
delete_option('locallinks_alib');
delete_site_option('locallinks_alib');
delete_option('locallinks_google');
delete_site_option('locallinks_google');
delete_option('locallinks_abe');
delete_site_option('locallinks_abe');
delete_option('locallinks_bsorg');
delete_site_option('locallinks_bsorg');
delete_option('locallinks_obs');
delete_site_option('locallinks_obs');
delete_option('locallinks_sw');
delete_site_option('locallinks_sw');
delete_option('locallinks_ae');
delete_site_option('locallinks_ae');
delete_option('locallinks_au');
delete_site_option('locallinks_au');
delete_option('locallinks_br');
delete_site_option('locallinks_br');
delete_option('locallinks_ca');
delete_site_option('locallinks_ca');
delete_option('locallinks_cn');
delete_site_option('locallinks_cn');
delete_option('locallinks_de');
delete_site_option('locallinks_de');
delete_option('locallinks_es');
delete_site_option('locallinks_es');
delete_option('locallinks_fr');
delete_site_option('locallinks_fr');
delete_option('locallinks_ie');
delete_site_option('locallinks_ie');
delete_option('locallinks_in');
delete_site_option('locallinks_in');
delete_option('locallinks_it');
delete_site_option('locallinks_it');
delete_option('locallinks_jp');
delete_site_option('locallinks_jp');
delete_option('locallinks_mx');
delete_site_option('locallinks_mx');
delete_option('locallinks_nl');
delete_site_option('locallinks_nl');
delete_option('locallinks_pl');
delete_site_option('locallinks_pl');
delete_option('locallinks_sa');
delete_site_option('locallinks_sa');
delete_option('locallinks_se');
delete_site_option('locallinks_se');
delete_option('locallinks_sg');
delete_site_option('locallinks_sg');
delete_option('locallinks_tr');
delete_site_option('locallinks_tr');
delete_option('locallinks_uk');
delete_site_option('locallinks_uk');
delete_option('locallinks_us');
delete_site_option('locallinks_us');
delete_option('locallinks_aplaff');
delete_site_option('locallinks_aplaff');
delete_option('locallinks_googleaff');
delete_site_option('locallinks_googleaff');
delete_option('locallinks_swaff');
delete_site_option('locallinks_swaff');
delete_option('locallinks_koboid');
delete_site_option('locallinks_koboid');
delete_option('locallinks_kobomid');
delete_site_option('locallinks_kobomid');
delete_option('locallinks_bsorgusaff');
delete_site_option('locallinks_bsorgusaff');
delete_option('locallinks_bsorgukaff');
delete_site_option('locallinks_bsorgukaff');
delete_option('locallinks_bsorgesaff');
delete_site_option('locallinks_bsorgesaff');
delete_option('locallinks_obsaff');
delete_site_option('locallinks_obsaff');
delete_option('locallinks_obssrc');
delete_site_option('locallinks_obssrc');
delete_option('locallinks_plugin_version');
delete_site_option('locallinks_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'locallinks_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%aff' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

