<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-singular-name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-slug' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-hierarchical' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('document-field-dauthor-name');
delete_site_option('document-field-dauthor-name');
delete_option('document-field-dauthor-singular-name');
delete_site_option('document-field-dauthor-singular-name');
delete_option('document-field-dauthor-slug');
delete_site_option('document-field-dauthor-slug');
delete_option('document-field-dauthor-hierarchical');
delete_site_option('document-field-dauthor-hierarchical');
delete_option('document-field-dauthor-active');
delete_site_option('document-field-dauthor-active');
delete_option('document-field-session-name');
delete_site_option('document-field-session-name');
delete_option('document-field-session-singular-name');
delete_site_option('document-field-session-singular-name');
delete_option('document-field-session-slug');
delete_site_option('document-field-session-slug');
delete_option('document-field-session-hierarchical');
delete_site_option('document-field-session-hierarchical');
delete_option('document-field-session-active');
delete_site_option('document-field-session-active');
delete_option('document-field-keyword-name');
delete_site_option('document-field-keyword-name');
delete_option('document-field-keyword-singular-name');
delete_site_option('document-field-keyword-singular-name');
delete_option('document-field-keyword-slug');
delete_site_option('document-field-keyword-slug');
delete_option('document-field-keyword-hierarchical');
delete_site_option('document-field-keyword-hierarchical');
delete_option('document-field-keyword-active');
delete_site_option('document-field-keyword-active');
delete_option('document-field-country-name');
delete_site_option('document-field-country-name');
delete_option('document-field-country-singular-name');
delete_site_option('document-field-country-singular-name');
delete_option('document-field-country-slug');
delete_site_option('document-field-country-slug');
delete_option('document-field-country-hierarchical');
delete_site_option('document-field-country-hierarchical');
delete_option('document-field-country-active');
delete_site_option('document-field-country-active');
delete_option('document-field-language-name');
delete_site_option('document-field-language-name');
delete_option('document-field-language-singular-name');
delete_site_option('document-field-language-singular-name');
delete_option('document-field-language-slug');
delete_site_option('document-field-language-slug');
delete_option('document-field-language-hierarchical');
delete_site_option('document-field-language-hierarchical');
delete_option('document-field-language-active');
delete_site_option('document-field-language-active');
delete_option('document-field-type-name');
delete_site_option('document-field-type-name');
delete_option('document-field-type-singular-name');
delete_site_option('document-field-type-singular-name');
delete_option('document-field-type-slug');
delete_site_option('document-field-type-slug');
delete_option('document-field-type-hierarchical');
delete_site_option('document-field-type-hierarchical');
delete_option('document-field-type-active');
delete_site_option('document-field-type-active');
delete_option('document-field-search-result-unit');
delete_site_option('document-field-search-result-unit');
delete_option('document-field-perpeage');
delete_site_option('document-field-perpeage');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'document' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'document' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'document' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'document' ) );

