<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mystickyelements-widgets');
delete_site_option('mystickyelements-widgets');
delete_option('mse_help_cta');
delete_site_option('mse_help_cta');
delete_option('stickyelements_widgets');
delete_site_option('stickyelements_widgets');
delete_option('get_mystickyelements_page_views');
delete_site_option('get_mystickyelements_page_views');
delete_option('mystickyelements_hide_review_box');
delete_site_option('mystickyelements_hide_review_box');
delete_option('mystickyelements_show_review_box_after');
delete_site_option('mystickyelements_show_review_box_after');
delete_option('hide_mserecommended_plugin');
delete_site_option('hide_mserecommended_plugin');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_review_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_review_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_upgrade_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_upgrade_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_affiliate_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_affiliate_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mystickyelements-contact-form');
delete_site_option('mystickyelements-contact-form');
delete_option('mystickyelements-contact-field');
delete_site_option('mystickyelements-contact-field');
delete_option('mystickyelements-social-channels');
delete_site_option('mystickyelements-social-channels');
delete_option('mystickyelements-social-channels-tabs');
delete_site_option('mystickyelements-social-channels-tabs');
delete_option('mystickyelements-general-settings');
delete_site_option('mystickyelements-general-settings');
delete_option('mystickyelements-contact-mail-sent');
delete_site_option('mystickyelements-contact-mail-sent');
delete_option('mystickyelements_intro_popup');
delete_site_option('mystickyelements_intro_popup');
delete_option('myStickyelements_show_leads');
delete_site_option('myStickyelements_show_leads');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mystickyelements-social-channels-tabs%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mystickyelements-contact-field%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mystickyelements-contact-form%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mystickyelements-social-channels%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mystickyelements-general-settings%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mse_redirect');
delete_site_option('mse_redirect');
delete_option('mysticky_elements_options');
delete_site_option('mysticky_elements_options');
delete_option('mysticky_elements_options0');
delete_site_option('mysticky_elements_options0');
delete_option('mysticky_elements_options1');
delete_site_option('mysticky_elements_options1');
delete_option('mysticky_elements_options2');
delete_site_option('mysticky_elements_options2');
delete_option('mysticky_elements_options3');
delete_site_option('mysticky_elements_options3');
delete_option('mysticky_elements_options4');
delete_site_option('mysticky_elements_options4');
delete_option('mysticky_elements_options5');
delete_site_option('mysticky_elements_options5');
delete_option('mysticky_elements_options6');
delete_site_option('mysticky_elements_options6');
delete_option('mysticky_elements_options7');
delete_site_option('mysticky_elements_options7');
delete_option('mysticky_elements_options8');
delete_site_option('mysticky_elements_options8');
delete_option('mysticky_elements_options9');
delete_site_option('mysticky_elements_options9');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('mystickyelements-update_2_0');
delete_site_option('mystickyelements-update_2_0');

