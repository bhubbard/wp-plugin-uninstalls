<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmt_promote_popup_options');
delete_site_option('mmt_promote_popup_options');
delete_option('mmt_promote_slidein_options');
delete_site_option('mmt_promote_slidein_options');
delete_option('evo_promote_embed_options');
delete_site_option('evo_promote_embed_options');
delete_option('evcal_options_evcal_promote');
delete_site_option('evcal_options_evcal_promote');
delete_option('evcal_options_evcal_1');
delete_site_option('evcal_options_evcal_1');
delete_option('evcal_options_evcal_2');
delete_site_option('evcal_options_evcal_2');
delete_option('evo_tax_meta');
delete_site_option('evo_tax_meta');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'taxonomy_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

