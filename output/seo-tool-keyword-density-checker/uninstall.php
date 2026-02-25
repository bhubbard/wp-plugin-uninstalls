<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keyword_density_checker_configuration');
delete_site_option('keyword_density_checker_configuration');
delete_option('kdc_version');
delete_site_option('kdc_version');
delete_option('kdc_default_language');
delete_site_option('kdc_default_language');
delete_option('kdc_filter_stopwords');
delete_site_option('kdc_filter_stopwords');
delete_option('kdc_max_list_items');
delete_site_option('kdc_max_list_items');
delete_option('kdc_automatic_update');
delete_site_option('kdc_automatic_update');
delete_option('kdc_update_interval');
delete_site_option('kdc_update_interval');
delete_option('kdc_2word_phrases');
delete_site_option('kdc_2word_phrases');
delete_option('kdc_3word_phrases');
delete_site_option('kdc_3word_phrases');
delete_option('kdc_meta_keywords_count');
delete_site_option('kdc_meta_keywords_count');
delete_option('kdc_max_keywords_count');
delete_site_option('kdc_max_keywords_count');
delete_option('kdc_keywords_length');
delete_site_option('kdc_keywords_length');
delete_option('kdc_authors_can_change_content_language');
delete_site_option('kdc_authors_can_change_content_language');
delete_option('kdc_authors_can_disable_stopword_filter');
delete_site_option('kdc_authors_can_disable_stopword_filter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'kdc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kdc_max_keywords_length');
delete_site_option('kdc_max_keywords_length');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kdc_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kdc_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kdc_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kdc_metadata' ) );

