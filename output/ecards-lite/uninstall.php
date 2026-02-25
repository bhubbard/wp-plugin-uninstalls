<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecard_shortcode_fix');
delete_site_option('ecard_shortcode_fix');
delete_option('ecard_html_fix');
delete_site_option('ecard_html_fix');
delete_option('ecard_label_name_own');
delete_site_option('ecard_label_name_own');
delete_option('ecard_label_email_own');
delete_site_option('ecard_label_email_own');
delete_option('ecard_label_email_friend');
delete_site_option('ecard_label_email_friend');
delete_option('ecard_label_message');
delete_site_option('ecard_label_message');
delete_option('ecard_label_success');
delete_site_option('ecard_label_success');
delete_option('ecard_submit');
delete_site_option('ecard_submit');
delete_option('ecard_label');
delete_site_option('ecard_label');
delete_option('ecard_counter');
delete_site_option('ecard_counter');
delete_option('ecard_link_anchor');
delete_site_option('ecard_link_anchor');
delete_option('ecard_behaviour');
delete_site_option('ecard_behaviour');
delete_option('ecard_title');
delete_site_option('ecard_title');
delete_option('ecard_body_additional');
delete_site_option('ecard_body_additional');
delete_option('ecard_body_toggle');
delete_site_option('ecard_body_toggle');
delete_option('ecard_restrictions');
delete_site_option('ecard_restrictions');
delete_option('ecard_restrictions_message');
delete_site_option('ecard_restrictions_message');
delete_option('ecard_send_behaviour');
delete_site_option('ecard_send_behaviour');
delete_option('ecard_hardcoded_email');
delete_site_option('ecard_hardcoded_email');
delete_option('ecard_image_size');
delete_site_option('ecard_image_size');
delete_option('ecard_use_akismet');
delete_site_option('ecard_use_akismet');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('akismet_spam_count');
delete_site_option('akismet_spam_count');
delete_option('ecard_body_footer');
delete_site_option('ecard_body_footer');
delete_option('ecard_noreply');
delete_site_option('ecard_noreply');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

